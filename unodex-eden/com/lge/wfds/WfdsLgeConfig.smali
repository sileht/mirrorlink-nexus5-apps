.class public Lcom/lge/wfds/WfdsLgeConfig;
.super Ljava/lang/Object;
.source "WfdsLgeConfig.java"


# static fields
.field public static final CONFIG_LGE_WFDS_FEATURE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WFDS_ASP:Z

    sput-boolean v0, Lcom/lge/wfds/WfdsLgeConfig;->CONFIG_LGE_WFDS_FEATURE:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method
