model MassSpringDamper2
  parameter Real c2 = 1;
  parameter Real d2 = 2;
  parameter Real cc = 1;
  parameter Real dc = 100;
  parameter Real m2 = 1;
  input Real x1(start = 1);
  input Real v1(start = 0);
  output Real x2(start = 0);
  output Real v2(start = 0);
  output Real fk;
equation
  fk = cc * (x2 - x1) + dc * (x2 - x1);
  der(x2) = v2;
  der(v2) = 1 / m2 * ((-c2 * x2) - d2 * v2 - fk);
end MassSpringDamper2;
