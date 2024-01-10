//
//  LoginUseCase.swift
//  SeSacSlack
//
//  Created by 이상남 on 1/10/24.
//

import Foundation
import RxSwift
import RxCocoa


protocol LoginUseCase: AnyObject {
    func kakaoLogin(user: KakaoLoginRequestDTO) -> Observable<KakaoLoginResponseDTO>
    func appleLogin(user: AppleLoginRequestDTO) -> Observable<AppleLoginResponseDTO>
}

final class DefaultLoginUseCase: LoginUseCase {

    private let loginRepository: LoginRespository
    
    init(loginRepository: LoginRespository) {
        self.loginRepository = loginRepository
    }
 
    func kakaoLogin(user: KakaoLoginRequestDTO) -> RxSwift.Observable<KakaoLoginResponseDTO> {
        return loginRepository.kakaoLogin(user: user)
    }
    
    func appleLogin(user: AppleLoginRequestDTO) -> Observable<AppleLoginResponseDTO> {
        return loginRepository.apppleLogin(user: user)
    }
    
}
