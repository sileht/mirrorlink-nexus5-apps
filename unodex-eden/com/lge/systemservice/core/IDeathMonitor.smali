.class public interface abstract Lcom/lge/systemservice/core/IDeathMonitor;
.super Ljava/lang/Object;
.source "IDeathMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IDeathMonitor$Stub;
    }
.end annotation


# virtual methods
.method public abstract register(Landroid/os/IBinder;Lcom/lge/systemservice/core/DeathMonitorResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
