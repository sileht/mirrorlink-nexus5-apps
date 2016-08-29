.class public final Lcom/mirrorlink/android/commonapi/Defs$Intents;
.super Ljava/lang/Object;
.source "Defs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/Defs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final BIND_MIRRORLINK_API:Ljava/lang/String; = "com.mirrorlink.android.service.BIND"

.field public static final INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final LAUNCH_MIRRORLINK_APP:Ljava/lang/String; = "com.mirrorlink.android.app.LAUNCH"

.field public static final TERMINATE_MIRRORLINK_APP:Ljava/lang/String; = "com.mirrorlink.android.app.TERMINATE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
