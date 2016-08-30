.class public interface abstract Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
.super Ljava/lang/Object;
.source "ICliptrayManagerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;
    }
.end annotation


# virtual methods
.method public abstract cliptrayPaste()V
.end method

.method public abstract copyImageToCliptray(Landroid/net/Uri;)V
.end method

.method public abstract copyScreenCaptureToCliptray(Landroid/net/Uri;)V
.end method

.method public abstract copyToCliptray(Landroid/content/ClipData;)V
.end method

.method public abstract copyToCliptray(Landroid/widget/TextView;)V
.end method

.method public abstract copyToCliptray(Ljava/lang/CharSequence;)V
.end method

.method public abstract finishCliptrayService()V
.end method

.method public abstract getVisibility()I
.end method

.method public abstract hideCliptray()V
.end method

.method public abstract hideCliptraycue()V
.end method

.method public abstract isCliptraycueShowing()Z
.end method

.method public abstract isServiceConnected()Z
.end method

.method public abstract orientationChanged(Z)V
.end method

.method public abstract removePasteListener(Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;)V
.end method

.method public abstract setInputType(I)V
.end method

.method public abstract setPasteListener(Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;)V
.end method

.method public abstract showCliptray()V
.end method

.method public abstract showCliptraycue()V
.end method

.method public abstract showCliptraycueClose()V
.end method
