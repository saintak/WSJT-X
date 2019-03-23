subroutine gen_ft8wave(itone,nsym,nsps,fsample,f0,cwave,wave,icmplx,nwave)
!
! generate ft8 waveform using Gaussian-filtered frequency pulses.
!

  parameter(MAX_SECONDS=20)
  real wave(nwave)
  complex cwave(nwave)
  real pulse(23040)
  real dphi(0:(nsym+2)*nsps-1)
  integer itone(nsym)
  logical first
  data first/.true./
  save pulse,first,twopi,dt,hmod

  if(first) then
     twopi=8.0*atan(1.0)
     dt=1.0/fsample
     hmod=1.0
     bt=2.0
! Compute the frequency-smoothing pulse
     do i=1,3*nsps
        tt=(i-1.5*nsps)/real(nsps)
        pulse(i)=gfsk_pulse(bt,tt)
     enddo
     first=.false.
  endif

! Compute the smoothed frequency waveform.
! Length = (nsym+2)*nsps samples, first and last symbols extended 
  dphi_peak=twopi*hmod/real(nsps)
  dphi=0.0 
  do j=1,nsym         
     ib=(j-1)*nsps
     ie=ib+3*nsps-1
     dphi(ib:ie) = dphi(ib:ie) + dphi_peak*pulse(1:3*nsps)*itone(j)
  enddo
! Add dummy symbols at beginning and end with tone values equal to 1st and last symbol, respectively
  dphi(0:2*nsps-1)=dphi(0:2*nsps-1)+dphi_peak*itone(1)*pulse(nsps+1:3*nsps)
  dphi(nsym*nsps:(nsym+2)*nsps-1)=dphi(nsym*nsps:(nsym+2)*nsps-1)+dphi_peak*itone(nsym)*pulse(1:2*nsps)

! Calculate and insert the audio waveform
  phi=0.0
  dphi = dphi + twopi*f0*dt                          !Shift frequency up by f0
  wave=0.
  k=0
  do j=nsps,nsps+nwave-1                             !Don't include dummy symbols
     k=k+1
     if(icmplx.eq.0) then
        wave(k)=sin(phi)
     else
        cwave(k)=cmplx(cos(phi),sin(phi))
     endif
     phi=mod(phi+dphi(j),twopi)
  enddo

! Apply envelope shaping to the first and last symbols
  nramp=nint(nsps/8.0)
  if(icmplx.eq.0) then
     wave(1:nramp)=wave(1:nramp) *                                          &
          (1.0-cos(twopi*(/(i,i=0,nramp-1)/)/(2.0*nramp)))/2.0
     k1=nsym*nsps-nramp+1
     wave(k1:k1+nramp-1)=wave(k1:k1+nramp-1) *                              &
          (1.0+cos(twopi*(/(i,i=0,nramp-1)/)/(2.0*nramp)))/2.0
  else
     cwave(1:nramp)=cwave(1:nramp) *                                        &
          (1.0-cos(twopi*(/(i,i=0,nramp-1)/)/(2.0*nramp)))/2.0
     k1=nsym*nsps-nramp+1
     cwave(k1:k1+nramp-1)=cwave(k1:k1+nramp-1) *                            &
          (1.0+cos(twopi*(/(i,i=0,nramp-1)/)/(2.0*nramp)))/2.0
  endif

  return
end subroutine gen_ft8wave