.class public interface abstract Lcom/android/internal/policy/IKeyguardServiceEx;
.super Ljava/lang/Object;
.source "IKeyguardServiceEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardServiceEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract addStateMonitorCallbackEx(Lcom/android/internal/policy/IKeyguardStateCallbackEx;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doKeyguardUnlockDisabled(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeStateMonitorCallbackEx(Lcom/android/internal/policy/IKeyguardStateCallbackEx;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
