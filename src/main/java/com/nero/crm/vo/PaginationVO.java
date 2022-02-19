package com.nero.crm.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class PaginationVO<T> {

    private int total;

    private List<T> dataList;



}
