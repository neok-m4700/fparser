program exampleaa
  ! #include "DefInitBCvalus.F90"
  use dispmodule
  ! REAL, private, dimension(:) :: a = (/ 1.2345, 2.3456, 3.4567 /)
  dimension aaa()
  call disp_ahaqzdk('A = ', a, sep=', ', orient = 'ROW')
  if (i+1 < (timefinal+eps)) then
  continue
  end if 
  j = nodebycelllocal%pt(k+1)-nodebycelllocal%pt(k)         + fracbycelllocal%pt(k+1)-fracbycelllocal%pt(k)

  call PetscInitialize(PETSC_NULL_CHARACTER, Ierr)
  CHKERRQ(Ierr)
  CHKERRQ_TEST_1223(Ierr)

  do while (TimeCurrent<(TimeFinal+eps))

    ! init start time
    comptime_start = mpi_wtime()

    timeiter = timeiter + 1

    newtonconv = .false.
    kspconv = .false.

    ! save current status, copy Inc* to Inc*PrevisousTimeStep
    call inccv_saveincprevioustimestep

    if (commrank==0) then
      do i=1,size(fd)
        j = fd(i)
        write (j, *) ""
        write (j, *) ""
        write (j, '(A, I0) ') "Time Step: ", timeiter
        write (j, '(A, F16.5) ') "Time at previous time step: ", timecurrent/oneday

        write (j, *)
        write (j, '(A) ', advance = "no") "   -- Initial time step: "
        write (j, *) delta_t/oneday
      end do 
    end if 
  end do 
  ! print CSR
  subroutine CommonType_printCSR(CSR1)

    type(CSR), intent(inout) :: CSR1
    integer i, j

    write (*, '(A4, I5) ') "Nb:  ", CSR1%Nb
    do i=1,CSR1%Nb
      write (*, "(A4, I5, A8, I3) ") "Row  ", i, " : size=", CSR1%Pt(i+1)-CSR1%Pt(i)

      do j=CSR1%Pt(i)+1,CSR1%Pt(i+1)
        write (*, "(I5) ", advance = "no") CSR1%Num(j)
      end do 
      print *, ""
    end do 

  end subroutine CommonType_printCSR

end program exampleaa