.class public final Lcom/lge/systemui/SystemUIDBHelper$QuickSettings;
.super Ljava/lang/Object;
.source "SystemUIDBHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/SystemUIDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickSettings"
.end annotation


# static fields
.field private static final METHOD_QUICKSETTING_ISITEMAVAILABLE:Ljava/lang/String; = "QUICKSETTING_ISITEMAVAILABLE"

.field private static final METHOD_QUICKSETTING_ISITEMENABLE:Ljava/lang/String; = "QUICKSETTING_ISITEMENABLE"

.field private static final PARAMS_QUICKSETTING_ISITEMAVAILABLE_ITEMNAME:Ljava/lang/String; = "_item_name"

.field private static final PARAMS_QUICKSETTING_ISITEMENABLE_INDEX:Ljava/lang/String; = "_index"

.field private static final RETURN_VALUE:Ljava/lang/String; = "_return"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isItemAvailable(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_a

    .line 87
    :cond_9
    :goto_9
    return v3

    .line 73
    :cond_a
    # invokes: Lcom/lge/systemui/SystemUIDBHelper;->findReadForUser(Landroid/content/ContentResolver;)V
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->access$0(Landroid/content/ContentResolver;)V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "_item_name"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    # invokes: Lcom/lge/systemui/SystemUIDBHelper;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->access$1(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 79
    .local v2, "cp":Landroid/content/IContentProvider;
    if-eqz v2, :cond_9

    .line 80
    :try_start_1d
    # getter for: Lcom/lge/systemui/SystemUIDBHelper;->CALLING_PCAKAGE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemui/SystemUIDBHelper;->access$2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QUICKSETTING_ISITEMAVAILABLE"

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 82
    .local v1, "b":Landroid/os/Bundle;
    const-string v4, "_return"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_2f

    move-result v3

    goto :goto_9

    .line 85
    .end local v1    # "b":Landroid/os/Bundle;
    :catch_2f
    move-exception v4

    const-string v4, "SystemUIDBHelper"

    const-string v5, "ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static isItemEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 53
    # invokes: Lcom/lge/systemui/SystemUIDBHelper;->findReadForUser(Landroid/content/ContentResolver;)V
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->access$0(Landroid/content/ContentResolver;)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "_index"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    # invokes: Lcom/lge/systemui/SystemUIDBHelper;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->access$1(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 59
    .local v2, "cp":Landroid/content/IContentProvider;
    if-eqz v2, :cond_2d

    .line 60
    :try_start_13
    # getter for: Lcom/lge/systemui/SystemUIDBHelper;->CALLING_PCAKAGE:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemui/SystemUIDBHelper;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QUICKSETTING_ISITEMENABLE"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 61
    .local v1, "b":Landroid/os/Bundle;
    const-string v3, "_return"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_23} :catch_25

    move-result v3

    .line 66
    .end local v1    # "b":Landroid/os/Bundle;
    :goto_24
    return v3

    .line 64
    :catch_25
    move-exception v3

    const-string v3, "SystemUIDBHelper"

    const-string v4, "ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2d
    const/4 v3, 0x0

    goto :goto_24
.end method
