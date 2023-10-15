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

/* login.html */
class __TwigTemplate_0422fe7f11e2202cebbfa73bc4db5003 extends Template
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
        $this->parent = $this->loadTemplate("layout.html", "login.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Log In";
    }

    // line 3
    public function block_description($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Log in to your Creative Folk account";
    }

    // line 4
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "<main class=\"container\" id=\"content\">

  <section class=\"header\">
    <h1>Log in</h1>
  </section>
  <form method=\"post\" action=\"login.php\" class=\"form-membership\">
    ";
        // line 11
        if (($context["success"] ?? null)) {
            echo "<div class=\"alert alert-success\">";
            echo twig_escape_filter($this->env, ($context["success"] ?? null), "html", null, true);
            echo "</div>";
        }
        // line 12
        echo "    ";
        if (($context["errors"] ?? null)) {
            echo "<div class=\"alert alert-danger\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "message", [], "any", false, false, false, 12), "html", null, true);
            echo "</div>";
        }
        // line 13
        echo "
    <div class=\"form-group\">
      <label for=\"email\">Email </label>
      <input type=\"text\" name=\"email\" id=\"email\" value=\"";
        // line 16
        echo twig_escape_filter($this->env, ($context["email"] ?? null), "html", null, true);
        echo "\" class=\"form-control\">
      <div class=\"errors\">";
        // line 17
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "email", [], "any", false, false, false, 17), "html", null, true);
        echo "</div>
    </div>

    <div class=\"form-group\">
      <label for=\"password\">Password </label>
      <input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\">
      <div class=\"errors\">";
        // line 23
        echo twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "password", [], "any", false, false, false, 23);
        echo "</div>
    </div>

    <input type=\"submit\" class=\"btn btn-primary\" value=\"Log in\"><br>
    <p><a href=\"password-lost.php\">Lost password?</a></p>
  </form>

</main>
";
    }

    public function getTemplateName()
    {
        return "login.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  105 => 23,  96 => 17,  92 => 16,  87 => 13,  80 => 12,  74 => 11,  66 => 5,  62 => 4,  55 => 3,  48 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'layout.html' %}
{% block title %}Log In{% endblock %}
{% block description %}Log in to your Creative Folk account{% endblock %}
{% block content %}
<main class=\"container\" id=\"content\">

  <section class=\"header\">
    <h1>Log in</h1>
  </section>
  <form method=\"post\" action=\"login.php\" class=\"form-membership\">
    {% if success %}<div class=\"alert alert-success\">{{ success }}</div>{% endif %}
    {% if errors %}<div class=\"alert alert-danger\">{{ errors.message }}</div>{% endif %}

    <div class=\"form-group\">
      <label for=\"email\">Email </label>
      <input type=\"text\" name=\"email\" id=\"email\" value=\"{{ email }}\" class=\"form-control\">
      <div class=\"errors\">{{ errors.email }}</div>
    </div>

    <div class=\"form-group\">
      <label for=\"password\">Password </label>
      <input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\">
      <div class=\"errors\">{{ errors.password|raw }}</div>
    </div>

    <input type=\"submit\" class=\"btn btn-primary\" value=\"Log in\"><br>
    <p><a href=\"password-lost.php\">Lost password?</a></p>
  </form>

</main>
{% endblock %}", "login.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\login.html");
    }
}
