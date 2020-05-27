from django import forms

blabla_CHOICES = (
    ('foo', 'foo'),
    ('bar', 'bar'),
    ('whatever', 'whatever'),
)
class apiForm(forms.Form):
    your_name = forms.CharField(
        label="名前",
        required=True,
    )
    zip_code = forms.CharField(
        label="郵便番号（半角ハイフン付き）",
        required=True,
        max_length=8,
        min_length=8,
    )
