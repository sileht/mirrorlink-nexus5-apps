.class public Lcom/lge/mirrorlink/MirrorLinkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MirrorLinkSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_Settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    :cond_d
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-direct {v2}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;-><init>()V

    const v3, 0x1020002

    .line 43
    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 34
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 51
    .local v4, "itemId":I
    const v7, 0x102002c

    if-ne v4, v7, :cond_56

    .line 52
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Lcom/lge/mirrorlink/MirrorLinkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 53
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 55
    .local v5, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "topActivityClassName":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "baseActivityClassName":Ljava/lang/String;
    if-eqz v1, :cond_52

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 58
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "i":Landroid/content/Intent;
    const/high16 v7, 0x34000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/MirrorLinkSettings;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v2    # "i":Landroid/content/Intent;
    :goto_51
    return v9

    .line 63
    :cond_52
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettings;->onBackPressed()V

    goto :goto_51

    .line 67
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "baseActivityClassName":Ljava/lang/String;
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "topActivity":Landroid/content/ComponentName;
    .end local v6    # "topActivityClassName":Ljava/lang/String;
    :cond_56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7
.end method
