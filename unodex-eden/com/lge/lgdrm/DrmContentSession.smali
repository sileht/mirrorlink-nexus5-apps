.class public final Lcom/lge/lgdrm/DrmContentSession;
.super Ljava/lang/Object;
.source "DrmContentSession.java"


# static fields
.field private static final DEFAULT_BROWSER_CLASS_NAME:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final DEFAULT_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final TAG:Ljava/lang/String; = "DrmCntSes"


# instance fields
.field private contentList:[Lcom/lge/lgdrm/DrmContent;

.field private context:Landroid/content/Context;

.field private defaultContent:Lcom/lge/lgdrm/DrmContent;

.field private nativeSession:I

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private selectedContent:Lcom/lge/lgdrm/DrmContent;


# direct methods
.method private constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .registers 3
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 578
    iput-object p2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    .line 579
    return-void
.end method

.method private activateContent(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1572
    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1573
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_10

    if-nez p1, :cond_11

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v4, v5, :cond_11

    .line 1589
    :cond_10
    :goto_10
    return v2

    .line 1577
    :cond_11
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v4, v5, :cond_24

    .line 1578
    const-string v4, "com.lge.lgdrm.action.DRM_LGU_ACTIVATION"

    invoke-direct {p0, v0, v4, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1585
    .local v1, "intent":Landroid/content/Intent;
    :goto_1b
    if-eqz v1, :cond_10

    .line 1588
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1589
    goto :goto_10

    .line 1579
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_24
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v4

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_39

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_39

    .line 1580
    const-string v4, "com.lge.lgdrm.action.DRM_ACTIVATION"

    invoke-direct {p0, v0, v4, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1581
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1b

    .line 1582
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_39
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {p0, v0, v4, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1b
.end method

.method public static getDrmTimeStatus(I)Z
    .registers 5
    .param p0, "agentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 937
    sget-boolean v3, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v3, :cond_7

    .line 946
    :goto_6
    return v2

    .line 941
    :cond_7
    if-lt p0, v1, :cond_d

    const/16 v3, 0xa

    if-le p0, v3, :cond_15

    .line 942
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid agentType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_15
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTimeStatus(I)I

    move-result v0

    .line 946
    .local v0, "status":I
    if-nez v0, :cond_1d

    :goto_1b
    move v2, v1

    goto :goto_6

    :cond_1d
    move v1, v2

    goto :goto_1b
.end method

.method private getIntent(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x10000000

    .line 1809
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1811
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.lge.lgdrm.action.DRM_LGU_ACTIVATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1812
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1813
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1815
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_32

    .line 1818
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1850
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_32
    :goto_32
    return-object v1

    .line 1820
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_33
    const-string v3, "com.lge.lgdrm.action.DRM_ACTIVATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1821
    const-string v2, "com.lge.lgdrm.extra.ACTIVATION_URL"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1824
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_32

    .line 1825
    :cond_5a
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1827
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1829
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    const-string v4, "com.android.browser"

    invoke-direct {p0, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->isEnableCheckPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1830
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1832
    :cond_7a
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1835
    const-string v3, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v4, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    if-eqz p4, :cond_32

    .line 1839
    const-string v3, ";"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "component":[Ljava/lang/String;
    if-nez v0, :cond_90

    move-object v1, v2

    .line 1841
    goto :goto_32

    .line 1844
    :cond_90
    const-string v2, "com.lge.lgdrm.extra.RECEIVER_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_32

    .end local v0    # "component":[Ljava/lang/String;
    :cond_96
    move-object v1, v2

    .line 1847
    goto :goto_32
.end method

.method private isEnableCheckPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1666
    if-eqz p1, :cond_5

    if-nez p2, :cond_24

    .line 1667
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1670
    :cond_24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1672
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_2b

    .line 1692
    :cond_2a
    :goto_2a
    return v2

    .line 1678
    :cond_2b
    const/4 v3, 0x0

    :try_start_2c
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_2f} :catch_5e

    move-result-object v0

    .line 1684
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2a

    .line 1688
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_2a

    .line 1689
    const-string v2, "DrmCntSes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableCheckPackage() is exist("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v2, 0x1

    goto :goto_2a

    .line 1680
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_5e
    move-exception v3

    const-string v3, "DrmCntSes"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEnableCheckPackage() is not found("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private isForwardActionSupported(Lcom/lge/lgdrm/DrmContent;)I
    .registers 5
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    .line 1704
    const/4 v0, -0x1

    .line 1706
    .local v0, "retVal":I
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d

    .line 1708
    :cond_b
    const/4 v0, -0x1

    .line 1714
    :cond_c
    :goto_c
    return v0

    .line 1709
    :cond_d
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_c

    .line 1710
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_c

    .line 1711
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isRightRenewalActionSupported(Lcom/lge/lgdrm/DrmContent;)I
    .registers 6
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v3, 0x1

    .line 1755
    const/4 v0, -0x1

    .line 1757
    .local v0, "retVal":I
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v1, v3, :cond_10

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_24

    .line 1758
    :cond_10
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v1, v3, :cond_22

    .line 1759
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v2, 0x300

    if-eq v1, v2, :cond_20

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v2, 0x301

    if-ne v1, v2, :cond_21

    .line 1760
    :cond_20
    const/4 v0, 0x0

    .line 1771
    :cond_21
    :goto_21
    return v0

    .line 1763
    :cond_22
    const/4 v0, 0x0

    .line 1765
    goto :goto_21

    :cond_24
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2c

    .line 1766
    const/4 v0, 0x0

    .line 1767
    goto :goto_21

    :cond_2c
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_21

    .line 1768
    const/4 v0, -0x1

    goto :goto_21
.end method

.method private isSettingActionSupported(Lcom/lge/lgdrm/DrmContent;I)I
    .registers 8
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;
    .param p2, "action"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1731
    const/4 v0, -0x1

    .line 1733
    .local v0, "retVal":I
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v1, v2, p2}, Lcom/lge/lgdrm/DrmContentSession;->nativeIsSettingsAvailable(Ljava/lang/String;II)I

    move-result v0

    .line 1734
    if-nez v0, :cond_16

    .line 1735
    if-eq p2, v4, :cond_12

    const/4 v1, 0x4

    if-ne p2, v1, :cond_17

    .line 1736
    :cond_12
    iput v3, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1740
    :cond_14
    :goto_14
    iput-boolean v3, p1, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 1743
    :cond_16
    return v0

    .line 1737
    :cond_17
    const/4 v1, 0x3

    if-ne p2, v1, :cond_14

    .line 1738
    iput v4, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    goto :goto_14
.end method

.method private isTimeSyncActionSupported(Lcom/lge/lgdrm/DrmContent;)I
    .registers 5
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    .line 1783
    const/4 v0, -0x1

    .line 1785
    .local v0, "retVal":I
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1786
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v2, 0x51

    if-eq v1, v2, :cond_12

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_13

    .line 1787
    :cond_12
    const/4 v0, 0x0

    .line 1791
    :cond_13
    return v0
.end method

.method private native nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private native nativeConsumeRight(Ljava/lang/String;IIIJJ)I
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)J
.end method

.method private static native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;
.end method

.method private native nativeGetDecryptionInfo(ILjava/lang/String;II)[B
.end method

.method private native nativeGetDrmTime()J
.end method

.method private static native nativeGetDrmTimeStatus(I)I
.end method

.method private native nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private native nativeIsSettingsAvailable(Ljava/lang/String;II)I
.end method

.method private native nativeJudgeRight(Ljava/lang/String;III)I
.end method

.method private native nativeSetDecryptionInfo(ZILjava/lang/String;II)I
.end method

.method private static native nativeSetDrmTime(IJ)I
.end method

.method static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 597
    if-nez p0, :cond_b

    .line 598
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter filename is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_b
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeIsDRM(Ljava/lang/String;)I

    move-result v1

    .line 602
    .local v1, "contentType":I
    if-nez v1, :cond_19

    .line 603
    new-instance v2, Lcom/lge/lgdrm/DrmException;

    const-string v3, "Not DRM protected content"

    invoke-direct {v2, v3}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :cond_19
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    invoke-direct {v0, p0, v2, v2}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 608
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    invoke-static {v0, p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 609
    const/4 v2, 0x0

    .line 612
    :goto_25
    return-object v2

    :cond_26
    new-instance v2, Lcom/lge/lgdrm/DrmContentSession;

    invoke-direct {v2, v0, p1}, Lcom/lge/lgdrm/DrmContentSession;-><init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    goto :goto_25
.end method

.method public static openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "decInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1371
    sget-boolean v3, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v3, :cond_7

    .line 1387
    :cond_6
    :goto_6
    return-object v2

    .line 1375
    :cond_7
    if-nez p0, :cond_11

    .line 1376
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter fd is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1378
    :cond_11
    if-nez p1, :cond_1b

    .line 1379
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter decInfo is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_1b
    invoke-static {v2, v4, p0, v4, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)J

    move-result-wide v0

    .line 1383
    .local v0, "nativeHandle":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_6

    .line 1387
    new-instance v3, Lcom/lge/lgdrm/DrmStream;

    invoke-direct {v3, v2, v0, v1}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;J)V

    move-object v2, v3

    goto :goto_6
.end method

.method public static openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "decInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1337
    sget-boolean v3, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v3, :cond_7

    .line 1353
    :cond_6
    :goto_6
    return-object v2

    .line 1341
    :cond_7
    if-nez p0, :cond_11

    .line 1342
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter filename is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1344
    :cond_11
    if-nez p1, :cond_1b

    .line 1345
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter decInfo is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1348
    :cond_1b
    invoke-static {p0, v4, v2, v4, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)J

    move-result-wide v0

    .line 1349
    .local v0, "nativeHandle":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_6

    .line 1353
    new-instance v2, Lcom/lge/lgdrm/DrmStream;

    invoke-direct {v2, p0, v0, v1}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method public static setDrmTime(IJ)I
    .registers 6
    .param p0, "agentType"    # I
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1032
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 1033
    const/4 v0, -0x1

    .line 1047
    :goto_5
    return v0

    .line 1036
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1037
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_14
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1b

    const/16 v0, 0xa

    if-le p0, v0, :cond_23

    .line 1041
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid agentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_23
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_31

    .line 1044
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_31
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDrmTime(IJ)I

    move-result v0

    goto :goto_5
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .registers 7
    .param p1, "session"    # I
    .param p2, "requestType"    # I
    .param p3, "httpMethod"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 1611
    iput p1, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1614
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1615
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_f

    .line 1616
    const/4 v0, -0x1

    .line 1623
    :goto_e
    return v0

    .line 1618
    :cond_f
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 1619
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 1620
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 1621
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 1623
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private startDldClient(Lcom/lge/lgdrm/DrmContent;)V
    .registers 7
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    .line 1636
    iget v3, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    const/4 v1, 0x3

    .line 1638
    .local v1, "downloadAgent":I
    :goto_6
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    iget v4, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-static {v1, v3, v4}, Lcom/lge/lgdrm/DrmObjectSession;->newInstance(ILandroid/content/Context;I)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v2

    .line 1644
    .local v2, "session":Lcom/lge/lgdrm/DrmObjectSession;
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 1647
    .local v0, "dldClient":Lcom/lge/lgdrm/DrmDldClient;
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1648
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1651
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    .line 1652
    return-void

    .line 1636
    .end local v0    # "dldClient":Lcom/lge/lgdrm/DrmDldClient;
    .end local v1    # "downloadAgent":I
    .end local v2    # "session":Lcom/lge/lgdrm/DrmObjectSession;
    :cond_21
    const/4 v1, 0x4

    goto :goto_6
.end method


# virtual methods
.method public consumeRight(JJ)I
    .registers 16
    .param p1, "startTime"    # J
    .param p3, "usedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 1208
    cmp-long v2, p1, v4

    if-ltz v2, :cond_b

    cmp-long v2, p3, v4

    if-gez v2, :cond_13

    .line 1209
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1211
    :cond_13
    cmp-long v2, p1, v4

    if-nez v2, :cond_23

    cmp-long v2, p3, v4

    if-nez v2, :cond_23

    .line 1212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1215
    :cond_23
    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1216
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2b

    .line 1217
    const/4 v1, -0x1

    .line 1229
    :cond_2a
    :goto_2a
    return v1

    .line 1220
    :cond_2b
    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2a

    iget v2, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2a

    .line 1224
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_48

    iget-boolean v1, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v1, :cond_48

    .line 1226
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    :cond_48
    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/lge/lgdrm/DrmContentSession;->nativeConsumeRight(Ljava/lang/String;IIIJJ)I

    move-result v1

    goto :goto_2a
.end method

.method public destroySession()V
    .registers 1

    .prologue
    .line 635
    return-void
.end method

.method public getContent(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContent;
    .registers 7
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 651
    if-nez p1, :cond_b

    .line 652
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter cid is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_b
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v3, :cond_11

    move-object v0, v2

    .line 677
    :cond_10
    :goto_10
    return-object v0

    .line 658
    :cond_11
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v3, v3, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    move-object v0, v2

    .line 659
    goto :goto_10

    .line 662
    :cond_1a
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 663
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_27

    move-object v0, v2

    .line 664
    goto :goto_10

    .line 671
    :cond_27
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v4, v4, Lcom/lge/lgdrm/DrmContent;->contentType:I

    invoke-direct {v0, v3, v1, v4}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 673
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v2

    .line 674
    goto :goto_10
.end method

.method public getContentList()[Lcom/lge/lgdrm/DrmContent;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 689
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_8

    move-object v0, v1

    .line 724
    :goto_7
    return-object v0

    .line 694
    :cond_8
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-eqz v2, :cond_1a

    .line 695
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v1, v1

    new-array v0, v1, [Lcom/lge/lgdrm/DrmContent;

    .line 698
    .local v0, "list":[Lcom/lge/lgdrm/DrmContent;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 702
    .end local v0    # "list":[Lcom/lge/lgdrm/DrmContent;
    :cond_1a
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v2, v2, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_29

    .line 703
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/lge/lgdrm/DrmContent;

    .line 704
    .restart local v0    # "list":[Lcom/lge/lgdrm/DrmContent;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v1, v0, v4

    goto :goto_7

    .line 709
    .end local v0    # "list":[Lcom/lge/lgdrm/DrmContent;
    :cond_29
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v2, v2, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 710
    .restart local v0    # "list":[Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_35

    move-object v0, v1

    .line 711
    goto :goto_7

    .line 714
    :cond_35
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v2, v0, v4

    .line 716
    array-length v2, v0

    new-array v2, v2, [Lcom/lge/lgdrm/DrmContent;

    iput-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    .line 717
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_44

    move-object v0, v1

    .line 718
    goto :goto_7

    .line 722
    :cond_44
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public getDecryptionInfo()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1405
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1406
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1410
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_17

    .line 1411
    const/4 v1, 0x0

    .line 1419
    :goto_16
    return-object v1

    .line 1414
    :cond_17
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_28

    iget-boolean v1, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v1, :cond_28

    .line 1416
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    :cond_28
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDecryptionInfo(ILjava/lang/String;II)[B

    move-result-object v1

    goto :goto_16
.end method

.method public getDrmTime()J
    .registers 3

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRightList(I)[Lcom/lge/lgdrm/DrmRight;
    .registers 4
    .param p1, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 814
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x80

    if-le p1, v0, :cond_f

    .line 815
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rights selection is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;
    .registers 4
    .param p1, "defaults"    # Z

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 777
    .local v0, "temp":Lcom/lge/lgdrm/DrmContent;
    if-eqz p1, :cond_6

    .line 778
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 787
    :goto_5
    return-object v0

    .line 780
    :cond_6
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v1, :cond_d

    .line 781
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 782
    goto :goto_5

    .line 783
    :cond_d
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_5
.end method

.method public getSelectedRight(Z)Lcom/lge/lgdrm/DrmRight;
    .registers 10
    .param p1, "defaults"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 887
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 888
    .local v6, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_a

    move-object v1, v7

    .line 904
    :cond_9
    :goto_9
    return-object v1

    .line 892
    :cond_a
    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_1b

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_1b

    .line 894
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1b
    new-instance v1, Lcom/lge/lgdrm/DrmRight;

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v0}, Lcom/lge/lgdrm/DrmRight;-><init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    .line 899
    .local v1, "right":Lcom/lge/lgdrm/DrmRight;
    iget-object v2, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 900
    iget v3, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    .line 899
    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I

    move-result v0

    if-eqz v0, :cond_9

    move-object v1, v7

    .line 901
    goto :goto_9
.end method

.method public isActionSupported(I)Z
    .registers 7
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1253
    const/4 v1, -0x1

    .line 1256
    .local v1, "retVal":I
    if-lt p1, v3, :cond_9

    const/16 v4, 0x8

    if-le p1, v4, :cond_11

    .line 1257
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid action"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1260
    :cond_11
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1261
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_18

    .line 1281
    :cond_17
    :goto_17
    return v2

    .line 1265
    :cond_18
    if-ne p1, v3, :cond_23

    .line 1266
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->isForwardActionSupported(Lcom/lge/lgdrm/DrmContent;)I

    move-result v1

    .line 1277
    :cond_1e
    :goto_1e
    const/4 v4, -0x1

    if-eq v1, v4, :cond_17

    move v2, v3

    .line 1281
    goto :goto_17

    .line 1267
    :cond_23
    const/4 v4, 0x2

    if-eq p1, v4, :cond_2c

    .line 1268
    const/4 v4, 0x3

    if-eq p1, v4, :cond_2c

    .line 1269
    const/4 v4, 0x4

    if-ne p1, v4, :cond_31

    .line 1270
    :cond_2c
    invoke-direct {p0, v0, p1}, Lcom/lge/lgdrm/DrmContentSession;->isSettingActionSupported(Lcom/lge/lgdrm/DrmContent;I)I

    move-result v1

    .line 1271
    goto :goto_1e

    :cond_31
    const/4 v4, 0x7

    if-ne p1, v4, :cond_39

    .line 1272
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->isRightRenewalActionSupported(Lcom/lge/lgdrm/DrmContent;)I

    move-result v1

    .line 1273
    goto :goto_1e

    :cond_39
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1e

    .line 1274
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->isTimeSyncActionSupported(Lcom/lge/lgdrm/DrmContent;)I

    move-result v1

    goto :goto_1e
.end method

.method public isValidSession()Z
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_a

    .line 624
    const/4 v0, 0x0

    .line 626
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public judgeRight(IZ)I
    .registers 8
    .param p1, "permission"    # I
    .param p2, "checkPreviewURL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1141
    const/4 v1, 0x0

    .line 1144
    .local v1, "preview":I
    if-lt p1, v2, :cond_8

    const/16 v3, 0x80

    if-le p1, v3, :cond_10

    .line 1145
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid permission"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1148
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1149
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_19

    .line 1150
    const/4 v2, -0x1

    .line 1166
    :cond_18
    :goto_18
    return v2

    .line 1153
    :cond_19
    if-eqz p2, :cond_20

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    .line 1158
    :cond_20
    if-nez p2, :cond_26

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    if-ne v3, v2, :cond_27

    .line 1159
    :cond_26
    const/4 v1, 0x1

    .line 1162
    :cond_27
    iput p1, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1163
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v1, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeJudgeRight(Ljava/lang/String;III)I

    move-result v2

    .line 1164
    .local v2, "retVal":I
    iput v2, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    goto :goto_18
.end method

.method public obtainNewRight(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "resultReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1481
    const/4 v2, 0x0

    .line 1485
    .local v2, "retVal":I
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1486
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Rights renewal is not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1489
    :cond_12
    if-eqz p2, :cond_18

    iget-object v5, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v5, :cond_20

    .line 1490
    :cond_18
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Invalid parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1493
    :cond_20
    invoke-virtual {p0, v4}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1494
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_28

    move v3, v4

    .line 1519
    :goto_27
    return v3

    .line 1498
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "intentReceiver":Ljava/lang/String;
    if-ne p1, v3, :cond_66

    .line 1501
    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5b

    .line 1502
    const/4 v5, 0x0

    invoke-direct {p0, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->activateContent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1503
    if-nez v2, :cond_57

    move v2, v3

    .line 1515
    :cond_57
    :goto_57
    if-gtz v2, :cond_79

    move v3, v4

    .line 1516
    goto :goto_27

    .line 1505
    :cond_5b
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v5, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v6, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v5, v6, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1507
    goto :goto_57

    :cond_66
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_57

    .line 1508
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, p1, v3, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1509
    if-lez v2, :cond_57

    .line 1511
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->startDldClient(Lcom/lge/lgdrm/DrmContent;)V

    goto :goto_57

    :cond_79
    move v3, v2

    .line 1519
    goto :goto_27
.end method

.method public openDrmStream()Lcom/lge/lgdrm/DrmStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1300
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1301
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Need proper permission to access drm"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1304
    :cond_f
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1305
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_17

    .line 1319
    :cond_16
    :goto_16
    return-object v1

    .line 1309
    :cond_17
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_28

    iget-boolean v4, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v4, :cond_28

    .line 1311
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Select Right first"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1314
    :cond_28
    iget-object v4, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v6, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {v4, v5, v1, v6, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;ILjava/io/FileDescriptor;I[B)J

    move-result-wide v2

    .line 1315
    .local v2, "nativeHandle":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_16

    .line 1319
    new-instance v1, Lcom/lge/lgdrm/DrmStream;

    iget-object v4, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;J)V

    goto :goto_16
.end method

.method public selectContent(Lcom/lge/lgdrm/DrmContent;)I
    .registers 4
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 746
    if-nez p1, :cond_a

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter content is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_a
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_10

    .line 751
    const/4 v0, -0x1

    .line 760
    :goto_f
    return v0

    .line 754
    :cond_10
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    invoke-virtual {v0, p1}, Lcom/lge/lgdrm/DrmContent;->isSibling(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid content to this session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_20
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    .line 760
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public selectRight(Lcom/lge/lgdrm/DrmRight;)I
    .registers 5
    .param p1, "right"    # Lcom/lge/lgdrm/DrmRight;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 843
    if-nez p1, :cond_a

    .line 844
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter right is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 848
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_13

    .line 849
    const/4 v1, -0x1

    return v1

    .line 852
    :cond_13
    invoke-virtual {p1, v0}, Lcom/lge/lgdrm/DrmRight;->isMatched(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 853
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid right to this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights selection is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDecryptionInfo(Z)I
    .registers 9
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 1440
    .local v6, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_9

    .line 1441
    const/4 v0, -0x1

    .line 1455
    :goto_8
    return v0

    .line 1444
    :cond_9
    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_1b

    .line 1445
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1446
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_1b
    if-nez p1, :cond_2e

    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2e

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_2e

    .line 1452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :cond_2e
    iget v2, v6, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v3, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDecryptionInfo(ZILjava/lang/String;II)I

    move-result v0

    goto :goto_8
.end method

.method public syncDrmTime(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "resultReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 971
    invoke-static {}, Lcom/lge/lgdrm/DrmContentSession;->nativeAuthCaller()Z

    move-result v3

    if-nez v3, :cond_f

    .line 972
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 975
    :cond_f
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 976
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Time sync is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 978
    :cond_1e
    if-nez p1, :cond_28

    .line 979
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter resultReceiver is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 981
    :cond_28
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v3, :cond_34

    .line 982
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 985
    :cond_34
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_42

    .line 986
    const-string v3, "DrmCntSes"

    const-string v4, "Use activity context instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_41
    :goto_41
    return v2

    .line 991
    :cond_42
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.lgdrm.action.DRM_SYNC_TIME"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 994
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_41

    .line 998
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1000
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1003
    const/4 v2, 0x1

    goto :goto_41
.end method

.method public uploadRight(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "resultReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1541
    if-nez p1, :cond_b

    .line 1542
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter resultReceiver is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1544
    :cond_b
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1545
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1548
    :cond_17
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1549
    .local v0, "content":Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1e

    .line 1550
    return v2

    .line 1553
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights upload is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
