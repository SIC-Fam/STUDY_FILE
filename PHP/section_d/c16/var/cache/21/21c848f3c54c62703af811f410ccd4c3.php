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

/* work.html */
class __TwigTemplate_0cd9936104f7a8b7bd69abf0c5cfd5e3 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'title' => [$this, 'block_title'],
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
        $this->parent = $this->loadTemplate("layout.html", "work.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Edit article";
    }

    // line 3
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 4
        echo "    <form action=\"";
        echo twig_escape_filter($this->env, ($context["app_root"] ?? null), "html", null, true);
        echo "work.php?id=";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "id", [], "any", false, false, false, 4), "html", null, true);
        echo "\" method=\"POST\"  enctype=\"multipart/form-data\">

    <main class=\"container\" id=\"content\">
      <section class=\"header\"><h1>Create &amp; Edit Your Work:</h1></section>
      ";
        // line 8
        if (twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "message", [], "any", false, false, false, 8)) {
            echo "<div class=\"alert alert-danger\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "message", [], "any", false, false, false, 8), "html", null, true);
            echo "</div>";
        }
        // line 9
        echo "
      <div class=\"admin-article\">
        <section class=\"image\">
          ";
        // line 12
        if ( !twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "image_file", [], "any", false, false, false, 12)) {
            // line 13
            echo "            <label for=\"image\">Upload image</label>
            <div class=\"form-group image-placeholder\">
              <input type=\"file\" name=\"image\" class=\"form-control-file\" id=\"image\"><br>
              <span class=\"errors\">";
            // line 16
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "image_file", [], "any", false, false, false, 16), "html", null, true);
            echo "</span>
            </div>
            <div class=\"form-group\">
              <label for=\"image_alt\">Alt text: </label>
              <input type=\"text\" name=\"image_alt\" id=\"image_alt\" value=\"\"  class=\"form-control\">
              <span class=\"errors\">";
            // line 21
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "image_alt", [], "any", false, false, false, 21), "html", null, true);
            echo "</span>
            </div>
          ";
        } else {
            // line 24
            echo "            <label>Image:</label>
            <img src=\"uploads/";
            // line 25
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "image_file", [], "any", false, false, false, 25), "html", null, true);
            echo "\">
            <p class=\"alt\"><strong>Alt text:</strong> ";
            // line 26
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "image_alt", [], "any", false, false, false, 26), "html", null, true);
            echo "</p>
          ";
        }
        // line 28
        echo "        </section>


        <section class=\"text\">
          <div class=\"form-group\">
            <label for=\"title\">Title: </label>
            <input type=\"text\" name=\"title\" id=\"title\" value=\"";
        // line 34
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "title", [], "any", false, false, false, 34), "html", null, true);
        echo "\" class=\"form-control\">
            <span class=\"errors\">";
        // line 35
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "title", [], "any", false, false, false, 35), "html", null, true);
        echo "</span>
          </div>

          <div class=\"form-group\">
            <label for=\"summary\">Summary: </label>
            <textarea name=\"summary\" id=\"summary\" class=\"form-control\">";
        // line 40
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "summary", [], "any", false, false, false, 40), "html", null, true);
        echo "</textarea>
            <span class=\"errors\">";
        // line 41
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "summary", [], "any", false, false, false, 41), "html", null, true);
        echo "</span>
          </div>

          <div class=\"form-group\">
            <label for=\"article-content\">Content: </label>
            <textarea name=\"content\" id=\"article-content\" class=\"form-control\">";
        // line 46
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "content", [], "any", false, false, false, 46), "html", null, true);
        echo "</textarea>
            <span class=\"errors\">";
        // line 47
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "content", [], "any", false, false, false, 47), "html", null, true);
        echo "</span>
          </div>

          <div class=\"form-group\">
            <label for=\"category\">Category: </label>
            <select name=\"category_id\" id=\"category\">
              ";
        // line 53
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 54
            echo "                <option value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "id", [], "any", false, false, false, 54), "html", null, true);
            echo "\"
                  ";
            // line 55
            if ((twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "category_id", [], "any", false, false, false, 55) == twig_get_attribute($this->env, $this->source, $context["category"], "id", [], "any", false, false, false, 55))) {
                echo " selected";
            }
            echo ">
                  ";
            // line 56
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 56), "html", null, true);
            echo "</option>
              ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 58
        echo "              </select>
            <span class=\"errors\">";
        // line 59
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "category", [], "any", false, false, false, 59), "html", null, true);
        echo "</span>
          </div>

          <input type=\"hidden\" name=\"member_id\" value=\"";
        // line 62
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "id", [], "any", false, false, false, 62), "html", null, true);
        echo "\" />
          <span class=\"errors\">";
        // line 63
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "member", [], "any", false, false, false, 63), "html", null, true);
        echo "</span>

          <input type=\"submit\" name=\"update\" value=\"save\" class=\"btn btn-primary\">
          ";
        // line 66
        if (twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "id", [], "any", false, false, false, 66)) {
            // line 67
            echo "            <a href=\"";
            echo twig_escape_filter($this->env, ($context["app_root"] ?? null), "html", null, true);
            echo "work-delete.php?id=";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["article"] ?? null), "id", [], "any", false, false, false, 67), "html", null, true);
            echo "\"  class=\"btn btn-danger\">delete</a>
          ";
        }
        // line 69
        echo "
        </section>

      </div><!-- /.admin-article -->

    </main>

  </form>
  <script src=\"https://cdn.tiny.cloud/1/8hsqe30l6un4uybigsmixlge7buwxb90v2vbavx5yebpnej5/tinymce/5/tinymce.min.js\" referrerpolicy=\"origin\"></script>
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

";
    }

    public function getTemplateName()
    {
        return "work.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  209 => 69,  201 => 67,  199 => 66,  193 => 63,  189 => 62,  183 => 59,  180 => 58,  172 => 56,  166 => 55,  161 => 54,  157 => 53,  148 => 47,  144 => 46,  136 => 41,  132 => 40,  124 => 35,  120 => 34,  112 => 28,  107 => 26,  103 => 25,  100 => 24,  94 => 21,  86 => 16,  81 => 13,  79 => 12,  74 => 9,  68 => 8,  58 => 4,  54 => 3,  47 => 2,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'layout.html' %}
{% block title %}Edit article{% endblock %}
{% block content %}
    <form action=\"{{ app_root }}work.php?id={{ article.id }}\" method=\"POST\"  enctype=\"multipart/form-data\">

    <main class=\"container\" id=\"content\">
      <section class=\"header\"><h1>Create &amp; Edit Your Work:</h1></section>
      {% if errors.message %}<div class=\"alert alert-danger\">{{ errors.message }}</div>{% endif %}

      <div class=\"admin-article\">
        <section class=\"image\">
          {% if not article.image_file %}
            <label for=\"image\">Upload image</label>
            <div class=\"form-group image-placeholder\">
              <input type=\"file\" name=\"image\" class=\"form-control-file\" id=\"image\"><br>
              <span class=\"errors\">{{ errors.image_file }}</span>
            </div>
            <div class=\"form-group\">
              <label for=\"image_alt\">Alt text: </label>
              <input type=\"text\" name=\"image_alt\" id=\"image_alt\" value=\"\"  class=\"form-control\">
              <span class=\"errors\">{{ errors.image_alt }}</span>
            </div>
          {% else %}
            <label>Image:</label>
            <img src=\"uploads/{{article.image_file}}\">
            <p class=\"alt\"><strong>Alt text:</strong> {{ article.image_alt }}</p>
          {% endif %}
        </section>


        <section class=\"text\">
          <div class=\"form-group\">
            <label for=\"title\">Title: </label>
            <input type=\"text\" name=\"title\" id=\"title\" value=\"{{ article.title }}\" class=\"form-control\">
            <span class=\"errors\">{{ errors.title }}</span>
          </div>

          <div class=\"form-group\">
            <label for=\"summary\">Summary: </label>
            <textarea name=\"summary\" id=\"summary\" class=\"form-control\">{{ article.summary }}</textarea>
            <span class=\"errors\">{{ errors.summary }}</span>
          </div>

          <div class=\"form-group\">
            <label for=\"article-content\">Content: </label>
            <textarea name=\"content\" id=\"article-content\" class=\"form-control\">{{ article.content }}</textarea>
            <span class=\"errors\">{{ errors.content }}</span>
          </div>

          <div class=\"form-group\">
            <label for=\"category\">Category: </label>
            <select name=\"category_id\" id=\"category\">
              {% for category in categories %}
                <option value=\"{{ category.id }}\"
                  {% if article.category_id == category.id %} selected{% endif %}>
                  {{ category.name }}</option>
              {% endfor %}
              </select>
            <span class=\"errors\">{{ errors.category }}</span>
          </div>

          <input type=\"hidden\" name=\"member_id\" value=\"{{ session.id }}\" />
          <span class=\"errors\">{{ errors.member }}</span>

          <input type=\"submit\" name=\"update\" value=\"save\" class=\"btn btn-primary\">
          {% if article.id %}
            <a href=\"{{ app_root }}work-delete.php?id={{ article.id }}\"  class=\"btn btn-danger\">delete</a>
          {% endif %}

        </section>

      </div><!-- /.admin-article -->

    </main>

  </form>
  <script src=\"https://cdn.tiny.cloud/1/8hsqe30l6un4uybigsmixlge7buwxb90v2vbavx5yebpnej5/tinymce/5/tinymce.min.js\" referrerpolicy=\"origin\"></script>
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

{% endblock %}", "work.html", "C:\\WebEnv\\nginx-1.23.4\\html\\phpbook\\section_d\\c16\\templates\\work.html");
    }
}
