.class public Lcom/lge/mirrorlink/CertificateInfoFragment;
.super Landroid/preference/PreferenceFragment;
.source "CertificateInfoFragment.java"


# static fields
.field private static final KEY_APP_INFO:Ljava/lang/String; = "app_info"

.field private static final KEY_ISSUED_BY:Ljava/lang/String; = "issued_by"

.field private static final KEY_VALID_IN:Ljava/lang/String; = "valid_in"

.field private static final KEY_VALID_UNTIL:Ljava/lang/String; = "valid_until"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Settings"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 18
    return-void
.end method

.method private addPreferencesForActivity()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 57
    iget-object v8, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lge/mirrorlink/CertificateInfoFragment;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 58
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v0, :cond_a

    .line 59
    return-void

    .line 62
    :cond_a
    const v8, 0x7f040001

    invoke-virtual {p0, v8}, Lcom/lge/mirrorlink/CertificateInfoFragment;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 64
    iget-object v8, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    if-nez v8, :cond_1b

    .line 65
    return-void

    .line 69
    :cond_1b
    invoke-direct {p0, v0}, Lcom/lge/mirrorlink/CertificateInfoFragment;->setAppNamePref(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/lge/mirrorlink/CertificateInfoFragment;->getAppCertiEntity(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;

    move-result-object v1

    .line 72
    .local v1, "appCertEntity":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;
    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 73
    .local v2, "applicationCertificate":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 75
    .local v3, "applicationDeveloperCertificate":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    const-string/jumbo v5, " "

    .line 76
    .local v5, "issuer":Ljava/lang/String;
    const-string/jumbo v6, " "

    .line 77
    .local v6, "validIn":Ljava/lang/String;
    const-string/jumbo v7, " "

    .line 79
    .local v7, "validUntil":Ljava/lang/String;
    if-eqz v1, :cond_3b

    .line 80
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->getEntitynonrestricted()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3b

    .line 81
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->getEntitynonrestricted()Ljava/lang/String;

    move-result-object v6

    .line 84
    :cond_3b
    if-eqz v2, :cond_86

    .line 85
    iget-object v8, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    if-eqz v8, :cond_5f

    .line 86
    iget-object v8, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    const-string/jumbo v9, "O="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 87
    iget-object v8, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    const-string/jumbo v9, "O="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 88
    .local v4, "idx":I
    if-eq v4, v10, :cond_5f

    .line 89
    iget-object v8, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .end local v4    # "idx":I
    :cond_5f
    :goto_5f
    iget-object v8, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotAfter:Ljava/util/Date;

    if-eqz v8, :cond_70

    .line 96
    const-string/jumbo v8, "yyyy-MM-dd hh:mm"

    iget-object v9, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 115
    :cond_70
    :goto_70
    const-string/jumbo v8, "issued_by"

    invoke-direct {p0, v8, v5}, Lcom/lge/mirrorlink/CertificateInfoFragment;->setPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v8, "valid_in"

    invoke-direct {p0, v8, v6}, Lcom/lge/mirrorlink/CertificateInfoFragment;->setPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v8, "valid_until"

    invoke-direct {p0, v8, v7}, Lcom/lge/mirrorlink/CertificateInfoFragment;->setPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 92
    :cond_83
    iget-object v5, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->certiIssuer:Ljava/lang/String;

    goto :goto_5f

    .line 98
    :cond_86
    if-eqz v3, :cond_70

    .line 99
    iget-object v8, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    if-eqz v8, :cond_aa

    .line 100
    iget-object v8, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    const-string/jumbo v9, "O="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 101
    iget-object v8, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    const-string/jumbo v9, "O="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 102
    .restart local v4    # "idx":I
    if-eq v4, v10, :cond_aa

    .line 103
    iget-object v8, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    .end local v4    # "idx":I
    :cond_aa
    :goto_aa
    iget-object v8, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    if-eqz v8, :cond_70

    .line 110
    const-string/jumbo v8, "yyyy-MM-dd hh:mm"

    iget-object v9, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiNotAfter:Ljava/util/Date;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_70

    .line 106
    :cond_bc
    iget-object v5, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->certiIssuer:Ljava/lang/String;

    goto :goto_aa
.end method

.method private getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 158
    .local v0, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v0, :cond_8

    .line 159
    return-object v3

    .line 162
    :cond_8
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v1

    .line 163
    .local v1, "tmApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v1, :cond_f

    .line 164
    return-object v3

    .line 166
    :cond_f
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 167
    return-object v3

    .line 170
    :cond_16
    return-object v1
.end method

.method private getAppCertiEntity(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;
    .registers 10
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v4

    .line 176
    .local v4, "appId":I
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppCertification(I)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-result-object v1

    .line 177
    .local v1, "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    if-nez v1, :cond_11

    .line 178
    return-object v6

    .line 181
    :cond_11
    const/4 v2, 0x0

    .line 182
    .local v2, "appCertiEntities":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->getAppCertificationEntities()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "appCertiEntities":Ljava/lang/String;
    if-nez v2, :cond_19

    .line 184
    return-object v6

    .line 187
    :cond_19
    const-string/jumbo v5, ","

    invoke-static {v2, v5}, Lcom/lge/mirrorlink/misc/TokenExtractor;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "appCertiEntityList":[Ljava/lang/String;
    if-eqz v3, :cond_25

    array-length v5, v3

    if-nez v5, :cond_26

    .line 189
    :cond_25
    return-object v6

    .line 192
    :cond_26
    aget-object v5, v3, v7

    invoke-virtual {v1, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->getEntity(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;

    move-result-object v0

    .line 193
    .local v0, "appCertEntity":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;
    if-nez v0, :cond_2f

    .line 194
    return-object v6

    .line 197
    :cond_2f
    return-object v0
.end method

.method private setAppNamePref(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V
    .registers 6
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    const v3, 0x7f090006

    .line 126
    iget-object v1, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "app_info"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 128
    .local v0, "pref":Landroid/preference/Preference;
    if-nez v0, :cond_f

    .line 129
    return-void

    .line 132
    :cond_f
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 133
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 140
    :goto_18
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void

    .line 134
    :cond_27
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isSelfCertified()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 135
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_18

    .line 137
    :cond_31
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_18
.end method

.method private setPref(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 148
    .local v0, "pref":Landroid/preference/Preference;
    if-nez v0, :cond_9

    .line 149
    return-void

    .line 152
    :cond_9
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_a

    .line 34
    return-void

    .line 37
    :cond_a
    invoke-virtual {p0}, Lcom/lge/mirrorlink/CertificateInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPackageName:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/lge/mirrorlink/CertificateInfoFragment;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 40
    return-void

    .line 43
    :cond_1c
    invoke-direct {p0}, Lcom/lge/mirrorlink/CertificateInfoFragment;->addPreferencesForActivity()V

    .line 30
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 47
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 52
    return-void
.end method
