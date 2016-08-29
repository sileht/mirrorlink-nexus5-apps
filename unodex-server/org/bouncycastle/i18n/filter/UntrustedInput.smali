.class public Lorg/bouncycastle/i18n/filter/UntrustedInput;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected input:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getInput()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
