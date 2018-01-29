<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
 <section class="contact featured wow fadeIn">
          <header>
            <h2 class="title">
              Contact us
            </h2>
            
          </header>
          <div class="description">
            
            <sf:form action="${pageContext.request.contextPath}/contactme" commandName="contactme" method="post">
              <div class="form-group">
                <label for="name">Name</label>
                <sf:input  placeholder="Enter Name" class="form-control" path="name" name="name"></sf:input>
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <sf:input  type="text" path="email" placeholder="example@example.com" class="form-control" name="email"></sf:input>
              </div>
              <div class="form-group">
                <label for="company">Company</label>
                <sf:input type="text" path="company" placeholder="Example Ltd" class="form-control" name="company"></sf:input>
                
              </div>

              <div class="form-group">
                <label for="number">Phone Number</label>
                <sf:input path="number" type="text" placeholder="+91......" class="form-control" name="number"></sf:input>
              </div>

              <div class="form-group">
                <label for="message">Message</label>
                <sf:textarea class="form-control" path="message" name="message" placeholder="Say hello!"></sf:textarea>
              </div>

              <div class="form-group">
                <input class="btn btn-default" type="submit" value="Send">
              </div>
            </sf:form>

          </div>
        </section>
