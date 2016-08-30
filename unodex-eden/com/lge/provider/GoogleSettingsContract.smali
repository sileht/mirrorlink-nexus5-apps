.class public final Lcom/lge/provider/GoogleSettingsContract;
.super Ljava/lang/Object;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/GoogleSettingsContract$NameValueTable;,
        Lcom/lge/provider/GoogleSettingsContract$Partner;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.settings"

.field private static final TAG:Ljava/lang/String; = "GoogleSettings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
