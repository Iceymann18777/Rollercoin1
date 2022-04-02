.class public final Lcom/appnext/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cat:Ljava/lang/String;

.field private cnt:I

.field private fM:Ljava/lang/String;

.field private fN:I

.field private fO:I

.field private pbk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/Ad;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/appnext/core/b;->fM:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->fM:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    iput v0, p0, Lcom/appnext/core/b;->fN:I

    .line 16
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    iput v0, p0, Lcom/appnext/core/b;->fO:I

    .line 17
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCount()I

    move-result p1

    iput p1, p0, Lcom/appnext/core/b;->cnt:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 24
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 25
    :cond_1d
    instance-of v2, p1, Lcom/appnext/core/b;

    if-eqz v2, :cond_55

    .line 26
    check-cast p1, Lcom/appnext/core/b;

    iget-object v2, p1, Lcom/appnext/core/b;->fM:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->fM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget v2, p1, Lcom/appnext/core/b;->fN:I

    iget v3, p0, Lcom/appnext/core/b;->fN:I

    if-ne v2, v3, :cond_54

    iget v2, p1, Lcom/appnext/core/b;->fO:I

    iget v3, p0, Lcom/appnext/core/b;->fO:I

    if-ne v2, v3, :cond_54

    iget p1, p1, Lcom/appnext/core/b;->cnt:I

    iget v2, p0, Lcom/appnext/core/b;->cnt:I

    if-ne p1, v2, :cond_54

    return v0

    :cond_54
    return v1

    .line 33
    :cond_55
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/appnext/core/b;->fM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v1, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget v1, p0, Lcom/appnext/core/b;->fN:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget v1, p0, Lcom/appnext/core/b;->fO:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget v1, p0, Lcom/appnext/core/b;->cnt:I

    add-int/2addr v0, v1

    return v0
.end method
