.class public Lcom/lge/mirrorlink/CertificateInfoActivity;
.super Landroid/preference/PreferenceActivity;
.source "CertificateInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 15
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 16
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 19
    :cond_d
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_1b

    .line 22
    return-void

    .line 25
    :cond_1b
    new-instance v2, Lcom/lge/mirrorlink/CertificateInfoFragment;

    invoke-direct {v2}, Lcom/lge/mirrorlink/CertificateInfoFragment;-><init>()V

    .line 26
    .local v2, "certificateInfoFragment":Lcom/lge/mirrorlink/CertificateInfoFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v2, v1}, Lcom/lge/mirrorlink/CertificateInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 30
    const v5, 0x1020002

    .line 29
    invoke-virtual {v4, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 37
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 38
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoActivity;->onBackPressed()V

    .line 40
    :cond_c
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
