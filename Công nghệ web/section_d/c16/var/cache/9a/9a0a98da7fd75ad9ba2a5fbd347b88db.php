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

/* admin/layout.html */
class __TwigTemplate_2e418ee9db9bd44f083c53e286e9fbd2 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <title>Creative Folk Admin</title>
    <link rel=\"stylesheet\" href=\"";
        // line 7
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "css/styles.css\">
    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\"> 
    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap\">
    <link rel=\"shortcut icon\" type=\"image/png\" href=\"";
        // line 10
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "img/favicon.ico\">
  </head>
  <body>
    <header class=\"header-admin\">
      <a class=\"skip-link\" href=\"#content\">Skip to content</a>
      <nav class=\"member-menu\">
        <div class=\"container\">
          <span class=\"icon-user\"></span><a href=\"";
        // line 17
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "member.php?id=";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "id", [], "any", false, false, false, 17), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "forename", [], "any", false, false, false, 17), "html", null, true);
        echo "</a> /
            <a href=\"";
        // line 18
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "admin/index.php\">Admin</a> /
          <a href=\"";
        // line 19
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "logout.php\">Logout</a>
        </div>
      </nav>
      <div class=\"container\">
        <div class=\"logo\">
          <a href=\"";
        // line 24
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "index.php\"><img src=\"";
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "img/logo.png\" alt=\"Creative Folk\"></a>
        </div>
        <nav>
          <button id=\"toggle-navigation\" aria-expanded=\"false\">
            <span class=\"icon-menu\"></span><span class=\"hidden\">Menu</span>
          </button>
          <ul id=\"menu\">
            <li><a href=\"";
        // line 31
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "admin/articles.php\">Articles</a></li>
            <li><a href=\"";
        // line 32
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "admin/categories.php\">Categories</a></li>
            <li><a href=\"";
        // line 33
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "admin/members.php\">Members</a></li>
          </ul>
        </nav>
      </div><!-- .container -->
    </header>
    ";
        // line 38
        $this->displayBlock('content', $context, $blocks);
        // line 39
        echo "    <footer>
      <div class=\"container\">
        &copy; Creative Folk <?= date('Y');?>
      </div>
    </footer>
    <script src=\"https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js\" referrerpolicy=\"origin\"></script>
    <script>
      if (document.getElementById('article-content')){
        tinymce.init({
          menubar: false,
          selector: '#article-content',
          toolbar: 'bold italic link',
          plugins: 'link',
          target_list: false,
          link_title: false
        });
      };
    </script>
    <script src=\"";
        // line 57
        echo twig_escape_filter($this->env, ($context["doc_root"] ?? null), "html", null, true);
        echo "js/site.js\"></script>
  </body>
</html>";
    }

    // line 38
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
    }

    public function getTemplateName()
    {
        return "admin/layout.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  139 => 38,  132 => 57,  112 => 39,  110 => 38,  102 => 33,  98 => 32,  94 => 31,  82 => 24,  74 => 19,  70 => 18,  62 => 17,  52 => 10,  46 => 7,  38 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <title>Creative Folk Admin</title>
    <link rel=\"stylesheet\" href=\"{{ doc_root }}css/styles.css\">
    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\"> 
    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap\">
    <link rel=\"shortcut icon\" type=\"image/png\" href=\"{{ doc_root }}img/favicon.ico\">
  </head>
  <body>
    <header class=\"header-admin\">
      <a class=\"skip-link\" href=\"#content\">Skip to content</a>
      <nav class=\"member-menu\">
        <div class=\"container\">
          <span class=\"icon-user\"></span><a href=\"{{ doc_root }}member.php?id={{ session.id }}\">{{ session.forename }}</a> /
            <a href=\"{{ doc_root }}admin/index.php\">Admin</a> /
          <a href=\"{{ doc_root }}logout.php\">Logout</a>
        </div>
      </nav>
      <div class=\"container\">
        <div class=\"logo\">
          <a href=\"{{ doc_root }}index.php\"><img src=\"{{ doc_root }}img/logo.png\" alt=\"Creative Folk\"></a>
        </div>
        <nav>
          <button id=\"toggle-navigation\" aria-expanded=\"false\">
            <span class=\"icon-menu\"></span><span class=\"hidden\">Menu</span>
          </button>
          <ul id=\"menu\">
            <li><a href=\"{{ doc_root }}admin/articles.php\">Articles</a></li>
            <li><a href=\"{{ doc_root }}admin/categories.php\">Categories</a></li>
            <li><a href=\"{{ doc_root }}admin/members.php\">Members</a></li>
          </ul>
        </nav>
      </div><!-- .container -->
    </header>
    {% block content %}{% endblock %}
    <footer>
      <div class=\"container\">
        &copy; Creative Folk <?= date('Y');?>
      </div>
    </footer>
    <script src=\"https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js\" referrerpolicy=\"origin\"></script>
    <script>
      if (document.getElementById('article-content')){
        tinymce.init({
          menubar: false,
          selector: '#article-content',
          toolbar: 'bold italic link',
          plugins: 'link',
          target_list: false,
          link_title: false
        });
      };
    </script>
    <script src=\"{{ doc_root }}js/site.js\"></script>
  </body>
</html>", "admin/layout.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\admin\\layout.html");
    }
}
