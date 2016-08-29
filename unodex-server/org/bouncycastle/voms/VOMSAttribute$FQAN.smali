.class public Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/voms/VOMSAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FQAN"
.end annotation


# instance fields
.field capability:Ljava/lang/String;

.field fqan:Ljava/lang/String;

.field group:Ljava/lang/String;

.field role:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/voms/VOMSAttribute;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/voms/VOMSAttribute;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->this$0:Lorg/bouncycastle/voms/VOMSAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/voms/VOMSAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->this$0:Lorg/bouncycastle/voms/VOMSAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCapability()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    goto :goto_4
.end method

.method public getFQAN()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    if-nez v0, :cond_38

    const-string/jumbo v0, ""

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    if-nez v0, :cond_3b

    const-string/jumbo v0, ""

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-object v0

    :cond_35
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-object v0

    :cond_38
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    goto :goto_1d

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/Capability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    goto :goto_4
.end method

.method public getRole()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    goto :goto_4
.end method

.method protected split()V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    const-string/jumbo v2, "/Role="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_46

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    const-string/jumbo v3, "/Capability="

    add-int/lit8 v4, v0, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_47

    iget-object v3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_50

    :goto_35
    iput-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    if-ltz v2, :cond_52

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_41
    if-nez v0, :cond_54

    :cond_43
    :goto_43
    iput-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-void

    :cond_46
    return-void

    :cond_47
    iget-object v3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_50
    move-object v0, v1

    goto :goto_35

    :cond_52
    move-object v0, v1

    goto :goto_41

    :cond_54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_43

    move-object v1, v0

    goto :goto_43
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->getFQAN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
