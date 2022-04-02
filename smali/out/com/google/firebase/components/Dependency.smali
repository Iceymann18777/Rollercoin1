.class public final Lcom/google/firebase/components/Dependency;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final injection:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null dependency anInterface."

    .line 44
    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 45
    iput p2, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 46
    iput p3, p0, Lcom/google/firebase/components/Dependency;->injection:I

    return-void
.end method

.method public static optional(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 91
    instance-of v0, p1, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 92
    check-cast p1, Lcom/google/firebase/components/Dependency;

    .line 93
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    iget v2, p1, Lcom/google/firebase/components/Dependency;->type:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    iget p1, p1, Lcom/google/firebase/components/Dependency;->injection:I

    if-ne v0, p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public getInterface()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 103
    iget v2, p0, Lcom/google/firebase/components/Dependency;->type:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 105
    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDirectInjection()Z
    .registers 2

    .line 86
    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isRequired()Z
    .registers 3

    .line 78
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isSet()Z
    .registers 3

    .line 82
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    const-string v1, "required"

    goto :goto_20

    :cond_19
    if-nez v1, :cond_1e

    const-string v1, "optional"

    goto :goto_20

    :cond_1e
    const-string v1, "set"

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direct="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-nez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 117
    :goto_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
