.class public interface abstract Lorg/bouncycastle/cms/CMSProcessable;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract getContent()Ljava/lang/Object;
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method
