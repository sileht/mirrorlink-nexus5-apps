.class public interface abstract Lcom/lge/loader/interaction/IInteractionManager;
.super Ljava/lang/Object;
.source "IInteractionManager.java"


# virtual methods
.method public abstract dropClipData(Landroid/content/ClipData;I)Z
.end method

.method public abstract getRequestCode(Ljava/lang/String;Landroid/content/ClipData;)I
.end method

.method public abstract getResultIntent(Ljava/lang/String;Landroid/content/ClipData;)Landroid/content/Intent;
.end method

.method public abstract handleDropEvent(Landroid/view/DragEvent;FF)Z
.end method

.method public abstract isCapturedImageAttachable(I)Z
.end method

.method public abstract launchService(Landroid/content/Context;)Z
.end method

.method public abstract serviceSystemReady()Z
.end method
