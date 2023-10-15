<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* register.html */
class __TwigTemplate_072569821009625a581a84b40f8e3fea extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'title' => [$this, 'block_title'],
            'description' => [$this, 'block_description'],
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "layout.html";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("layout.html", "register.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Register";
    }

    // line 3
    public function block_description($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Register for Creative Folk";
    }

    // line 5
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 6
        echo "<main class=\"container\" id=\"content\">

  <section class=\"header\">
    <h1>Register</h1>
  </section>
  <form method=\"post\" action=\"register.php\" class=\"form-membership\">
    ";
        // line 12
        if (($context["errors"] ?? null)) {
            echo "<div class=\"alert alert-danger\">Please correct errors</div>";
        }
        // line 13
        echo "
    <div class=\"form-group\">
      <label for=\"forename\">Forename: </label><input type=\"text\" name=\"forename\" value=\"";
        // line 15
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "forename", [], "any", false, false, false, 15), "html", null, true);
        echo "\" id=\"forename\" class=\"form-control\">
      <div class=\"errors\">";
        // line 16
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "forename", [], "any", false, false, false, 16), "html", null, true);
        echo "</div>
    </div>

    <div class=\"form-group\">
      <label for=\"surname\">Surname: </label><input type=\"text\" name=\"surname\" value=\"";
        // line 20
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "surname", [], "any", false, false, false, 20), "html", null, true);
        echo "\" id=\"surname\" class=\"form-control\">
      <div class=\"errors\">";
        // line 21
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "surname", [], "any", false, false, false, 21), "html", null, true);
        echo "</div>
    </div>

    <div class=\"form-group\">
      <label for=\"email\">Email address: </label><input type=\"email\" name=\"email\" value=\"";
        // line 25
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["member"] ?? null), "email", [], "any", false, false, false, 25), "html", null, true);
        echo "\" id=\"email\" class=\"form-control\">
      <div class=\"errors\">";
        // line 26
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "email", [], "any", false, false, false, 26), "html", null, true);
        echo "</div>
    </div>

    <div class=\"form-group\">
      <label for=\"password\">Password: </label><input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\">
      <div class=\"errors\">";
        // line 31
        echo twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "password", [], "any", false, false, false, 31);
        echo "</div>
    </div>

    <div class=\"form-group\">
      <label for=\"confirm\">Confirm password: </label><input type=\"password\" name=\"confirm\" id=\"confirm\" class=\"form-control\">
      <div class=\"errors\">";
        // line 36
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "confirm", [], "any", false, false, false, 36), "html", null, true);
        echo "</div>
    </div>

    <input type=\"submit\" class=\"btn btn-primary\" value=\"Register\">
  </form>

</main>
";
    }

    public function getTemplateName()
    {
        return "register.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  124 => 36,  116 => 31,  108 => 26,  104 => 25,  97 => 21,  93 => 20,  86 => 16,  82 => 15,  78 => 13,  74 => 12,  66 => 6,  62 => 5,  55 => 3,  48 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'layout.html' %}
{% block title %}Register{% endblock %}
{% block description %}Register for Creative Folk{% endblock %}

{% block content %}
<main class=\"container\" id=\"content\">

  <section class=\"header\">
    <h1>Register</h1>
  </section>
  <form method=\"post\" action=\"register.php\" class=\"form-membership\">
    {% if errors %}<div class=\"alert alert-danger\">Please correct errors</div>{% endif %}

    <div class=\"form-group\">
      <label for=\"forename\">Forename: </label><input type=\"text\" name=\"forename\" value=\"{{ member.forename }}\" id=\"forename\" class=\"form-control\">
      <div class=\"errors\">{{ errors.forename }}</div>
    </div>

    <div class=\"form-group\">
      <label for=\"surname\">Surname: </label><input type=\"text\" name=\"surname\" value=\"{{ member.surname }}\" id=\"surname\" class=\"form-control\">
      <div class=\"errors\">{{ errors.surname }}</div>
    </div>

    <div class=\"form-group\">
      <label for=\"email\">Email address: </label><input type=\"email\" name=\"email\" value=\"{{ member.email }}\" id=\"email\" class=\"form-control\">
      <div class=\"errors\">{{ errors.email }}</div>
    </div>

    <div class=\"form-group\">
      <label for=\"password\">Password: </label><input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\">
      <div class=\"errors\">{{ errors.password|raw }}</div>
    </div>

    <div class=\"form-group\">
      <label for=\"confirm\">Confirm password: </label><input type=\"password\" name=\"confirm\" id=\"confirm\" class=\"form-control\">
      <div class=\"errors\">{{ errors.confirm }}</div>
    </div>

    <input type=\"submit\" class=\"btn btn-primary\" value=\"Register\">
  </form>

</main>
{% endblock %}", "register.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\register.html");
    }
}
