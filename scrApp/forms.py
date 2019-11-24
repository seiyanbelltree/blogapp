from django import forms

blabla_CHOICES = (
    ('foo', 'foo'),
    ('bar', 'bar'),
    ('whatever', 'whatever'),
)
class sandboxForm(forms.Form):
    num = forms.IntegerField(
        label="テスト用",
        required=True,
    )
    text = forms.CharField(
        label="検索ワード",
        required=True,
        max_length=100,
    )
