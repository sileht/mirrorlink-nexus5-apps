.class public Lcom/lge/systemservice/core/LeccpInfo;
.super Ljava/lang/Object;
.source "LeccpInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LeccpInfo$Action;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$Card;,
        Lcom/lge/systemservice/core/LeccpInfo$MediaInfo;,
        Lcom/lge/systemservice/core/LeccpInfo$Status;
    }
.end annotation


# static fields
.field private static final NULL_STRING:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/lge/systemservice/core/LeccpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
