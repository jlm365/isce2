!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Copyright 2010 California Institute of Technology. ALL RIGHTS RESERVED.
! 
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
! 
! http://www.apache.org/licenses/LICENSE-2.0
! 
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.
! 
! United States Government Sponsorship acknowledged. This software is subject to
! U.S. export control laws and regulations and has been classified as 'EAR99 NLR'
! (No [Export] License Required except when exporting to an embargoed country,
! end user, or in support of a prohibited end use). By downloading this software,
! the user agrees to comply with all applicable U.S. export laws and regulations.
! The user has the responsibility to obtain export licenses, or other export
! authority as may be required before exporting this software to any 'EAR99'
! embargoed foreign country or citizen of those countries.
!
! Author: Giangi Sacco
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




        subroutine setStdWriter(varInt)
            use offoutliersState
            implicit none
            integer*8 varInt
            ptStdWriter = varInt
        end

        subroutine setNumberOfPoints(varInt)
            use offoutliersState
            implicit none
            integer varInt
            MP = varInt
        end

        subroutine setLocationAcross(array1d,dim1)
            use offoutliersState
            implicit none
            integer dim1,i
            double precision, dimension(dim1):: array1d
            do i = 1, dim1
                xd(i) = array1d(i)
            enddo
        end

        subroutine setLocationAcrossOffset(array1d,dim1)
            use offoutliersState
            implicit none
            integer dim1,i
            double precision, dimension(dim1):: array1d
            do i = 1, dim1
                acshift(i) = array1d(i)
            enddo
        end

        subroutine setLocationDown(array1d,dim1)
            use offoutliersState
            implicit none
            integer dim1,i
            double precision, dimension(dim1):: array1d
            do i = 1, dim1
                yd(i) = array1d(i)
            enddo
        end

        subroutine setLocationDownOffset(array1d,dim1)
            use offoutliersState
            implicit none
            integer dim1,i
            double precision, dimension(dim1):: array1d
            do i = 1, dim1
                dnshift(i) = array1d(i)
            enddo
        end

        subroutine setDistance(varInt)
            use offoutliersState
            implicit none
            real*4 varInt
            distance = varInt
        end

        subroutine setSign(array1d,dim1)
            use offoutliersState
            implicit none
            integer dim1,i
            double precision, dimension(dim1):: array1d
            do i = 1, dim1
                sig(i) = array1d(i)
            enddo
        end

        subroutine setSNR(array1d,dim1)
            use offoutliersState
            implicit none
            integer dim1,i
            double precision, dimension(dim1):: array1d
            do i = 1, dim1
                s(i) = array1d(i)
            enddo
        end

