package liuyang.testdatajpa.modules.jpa.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serializable;
import javax.persistence.*;

/**
 * null
 * @TableName user
 */
@Entity
@Table(name="user")
@Data
@ToString
@EqualsAndHashCode
public class User implements Serializable {
    /**
     * 主键ID
     */
    @Id
    //@GeneratedValue(strategy = GenerationType.AUTO) // 由程序控制生成的主键 默认选项
    private Long id;

    /**
     * 姓名
     */
    private String name;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 邮箱
     */
    private String email;

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    /*public Long getId() {
        return id;
    }*/

    /**
     * 主键ID
     */
    /*public void setId(Long id) {
        this.id = id;
    }*/

    /**
     * 姓名
     */
    /*public String getName() {
        return name;
    }*/

    /**
     * 姓名
     */
    /*public void setName(String name) {
        this.name = name;
    }*/

    /**
     * 年龄
     */
    /*public Integer getAge() {
        return age;
    }*/

    /**
     * 年龄
     */
    /*public void setAge(Integer age) {
        this.age = age;
    }*/

    /**
     * 邮箱
     */
    /*public String getEmail() {
        return email;
    }*/

    /**
     * 邮箱
     */
    /*public void setEmail(String email) {
        this.email = email;
    }*/

/*
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        User other = (User) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getAge() == null ? other.getAge() == null : this.getAge().equals(other.getAge()))
            && (this.getEmail() == null ? other.getEmail() == null : this.getEmail().equals(other.getEmail()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getAge() == null) ? 0 : getAge().hashCode());
        result = prime * result + ((getEmail() == null) ? 0 : getEmail().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", age=").append(age);
        sb.append(", email=").append(email);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }*/
}