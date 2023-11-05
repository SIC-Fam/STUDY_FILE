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

/* admin/admin.html */
class __TwigTemplate_e9deb684348449ed094ff3ff44f7dcf1 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "admin/layout.html";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("admin/layout.html", "admin/admin.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 3
        echo "
  <main class=\"container\" id=\"content\">
    <section class=\"header\">
      <h1>Admin</h1>
    </section>
    <table class=\"admin\">
      <tr><th></th><th>Count</th><th class=\"create\">Create</th><th class=\"view\">View</th></tr>
        <tr><td><strong>Categories</strong></td><td>";
        // line 10
        echo twig_escape_filter($this->env, ($context["category_count"] ?? null), "html", null, true);
        echo "</td><td><a href=\"category.php\" class=\"btn btn-primary\">Add</a></td><td><a href=\"categories.php\" class=\"btn btn-primary\">View</a></td></tr>
      <tr><td><strong>Articles</strong></td><td>";
        // line 11
        echo twig_escape_filter($this->env, ($context["article_count"] ?? null), "html", null, true);
        echo "</td><td><a href=\"article.php\" class=\"btn btn-primary\">Add</a></td><td><a href=\"articles.php\" class=\"btn btn-primary\">View</a></td></tr>
      <tr><td><strong>Members</strong></td><td>";
        // line 12
        echo twig_escape_filter($this->env, ($context["member_count"] ?? null), "html", null, true);
        echo "</td><td></td><td><a href=\"members.php\" class=\"btn btn-primary\">View</a></td></tr>
    </table>
  </main>

";
    }

    public function getTemplateName()
    {
        return "admin/admin.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 12,  63 => 11,  59 => 10,  50 => 3,  46 => 2,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'admin/layout.html' %}
{% block content %}

  <main class=\"container\" id=\"content\">
    <section class=\"header\">
      <h1>Admin</h1>
    </section>
    <table class=\"admin\">
      <tr><th></th><th>Count</th><th class=\"create\">Create</th><th class=\"view\">View</th></tr>
        <tr><td><strong>Categories</strong></td><td>{{ category_count }}</td><td><a href=\"category.php\" class=\"btn btn-primary\">Add</a></td><td><a href=\"categories.php\" class=\"btn btn-primary\">View</a></td></tr>
      <tr><td><strong>Articles</strong></td><td>{{ article_count }}</td><td><a href=\"article.php\" class=\"btn btn-primary\">Add</a></td><td><a href=\"articles.php\" class=\"btn btn-primary\">View</a></td></tr>
      <tr><td><strong>Members</strong></td><td>{{ member_count }}</td><td></td><td><a href=\"members.php\" class=\"btn btn-primary\">View</a></td></tr>
    </table>
  </main>

{% endblock %}", "admin/admin.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\admin\\admin.html");
    }
}
