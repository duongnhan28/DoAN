package com.doanTN.startupDN.forms;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class InvestorForm {
    private Long id;
    private Long userId;
    @NotBlank(message = "Vui lòng nhập tên")
    private String investorsname;
    @NotBlank(message = "Vui lòng nhập tên viết tắt")
    private String abbreviations;
    private String logo;
    @NotBlank(message = "Vui lòng nhập nội dung")
    private String content;
    private String country;
    private String province;
    private String district;
    private String subdistrict;
    @NotBlank(message = "Vui lòng nhập địa chỉ cụ thể")
    private String houseno;
    @NotBlank(message = "Vui lòng nhập số điện thoại liên lạc")
    private String sdt;
    @NotBlank(message = "Vui lòng nhập email")
    private String email;

}
