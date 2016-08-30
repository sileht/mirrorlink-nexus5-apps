.class public Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;
.super Ljava/lang/Object;
.source "MetaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leff/midi/event/meta/MetaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MetaEventData"
.end annotation


# instance fields
.field public final data:[B

.field public final length:Lcom/leff/midi/util/VariableLengthInt;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->type:I

    .line 138
    new-instance v0, Lcom/leff/midi/util/VariableLengthInt;

    invoke-direct {v0, p1}, Lcom/leff/midi/util/VariableLengthInt;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    .line 139
    iget-object v0, p0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    .line 140
    iget-object v0, p0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->length:Lcom/leff/midi/util/VariableLengthInt;

    invoke-virtual {v0}, Lcom/leff/midi/util/VariableLengthInt;->getValue()I

    move-result v0

    if-lez v0, :cond_27

    .line 142
    iget-object v0, p0, Lcom/leff/midi/event/meta/MetaEvent$MetaEventData;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 144
    :cond_27
    return-void
.end method
