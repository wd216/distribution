package test.dao;

import java.util.List;
import test.model.Scope;

public interface ScopeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table scope
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer scopeid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table scope
     *
     * @mbg.generated
     */
    int insert(Scope record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table scope
     *
     * @mbg.generated
     */
    Scope selectByPrimaryKey(Integer scopeid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table scope
     *
     * @mbg.generated
     */
    List<Scope> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table scope
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Scope record);
}