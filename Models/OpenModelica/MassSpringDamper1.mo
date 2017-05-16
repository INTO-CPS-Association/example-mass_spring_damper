model MassSpringDamper1
  parameter Real c1 = 1;
  parameter Real d1 = 1;
  parameter Real m1 = 1;
  output Real x1(start = 1);
  output Real v1(start = 0);
  input Real fk;
equation
  der(x1) = v1;
  der(v1) = 1 / m1 * ((-c1 * x1) - d1 * v1 + fk);
end MassSpringDamper1;
