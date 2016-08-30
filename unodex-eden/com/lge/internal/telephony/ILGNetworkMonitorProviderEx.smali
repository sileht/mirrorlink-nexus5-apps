.class public interface abstract Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;
.super Ljava/lang/Object;
.source "ILGNetworkMonitorProviderEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract isEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNetworkBand(Ljava/lang/String;Ljava/lang/String;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
