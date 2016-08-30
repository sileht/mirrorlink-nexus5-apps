.class public interface abstract Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;
.super Ljava/lang/Object;
.source "IWiFiAggregation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;
    }
.end annotation


# virtual methods
.method public abstract enable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract init()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
