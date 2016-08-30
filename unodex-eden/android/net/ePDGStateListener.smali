.class public Landroid/net/ePDGStateListener;
.super Ljava/lang/Object;
.source "ePDGStateListener.java"


# static fields
.field public static final LISTEN_CBS_ERROR:I = 0x20

.field public static final LISTEN_CONNECTION_PARAM:I = 0x10

.field public static final LISTEN_ERROR_STATUS:I = 0x8

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_PDP_STATE:I = 0x1

.field public static final LISTEN_WIFI_STATUS:I = 0x4

.field public static final LISTEN_ePDGBLOCK:I = 0x40


# instance fields
.field callback:Landroid/net/IePDGStateListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/net/ePDGStateListener$1;

    invoke-direct {v0, p0}, Landroid/net/ePDGStateListener$1;-><init>(Landroid/net/ePDGStateListener;)V

    iput-object v0, p0, Landroid/net/ePDGStateListener;->callback:Landroid/net/IePDGStateListener;

    .line 128
    new-instance v0, Landroid/net/ePDGStateListener$2;

    invoke-direct {v0, p0}, Landroid/net/ePDGStateListener$2;-><init>(Landroid/net/ePDGStateListener;)V

    iput-object v0, p0, Landroid/net/ePDGStateListener;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public onCBSErrorStatusChanged(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onConnectionParamStatus([Ljava/lang/String;)V
    .registers 2
    .param p1, "ConParam"    # [Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public onErrorStatusChanged(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onPDPStateChanged([I)V
    .registers 2
    .param p1, "serviceState"    # [I

    .prologue
    .line 60
    return-void
.end method

.method public onWiFiStatusChanged(Z)V
    .registers 2
    .param p1, "mWF"    # Z

    .prologue
    .line 68
    return-void
.end method

.method public onePDGBlockStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 96
    return-void
.end method
