module VersionsHelper
  def modificated_warning_if_needed(obj)
    return if obj.versions.where(event: 'update').empty?

    content_tag(
      :span,
      '&#xe025;'.html_safe,
      class: 'iconic text-error',
      title: t('view.versions.have_changes'),
      data: {
        show_tooltip: true
      }
    )
  end
end
