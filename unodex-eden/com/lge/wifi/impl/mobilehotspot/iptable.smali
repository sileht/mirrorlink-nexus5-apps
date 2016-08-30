.class public Lcom/lge/wifi/impl/mobilehotspot/iptable;
.super Ljava/lang/Object;
.source "iptable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;,
        Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;
    }
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public itype:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

.field public port_end:I

.field public port_start:I

.field public protocol:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
