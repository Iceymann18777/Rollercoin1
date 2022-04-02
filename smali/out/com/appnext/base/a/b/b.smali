.class public final Lcom/appnext/base/a/b/b;
.super Lcom/appnext/base/a/b/d;
.source "SourceFile"


# instance fields
.field private dG:Ljava/lang/String;

.field private dH:Ljava/lang/String;

.field private dI:Ljava/lang/String;

.field private dJ:Ljava/util/Date;

.field private mDataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/appnext/base/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Lcom/appnext/base/a/b/d;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/appnext/base/a/b/b;->dG:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/appnext/base/a/b/b;->dH:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/appnext/base/a/b/b;->dI:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/appnext/base/a/b/b;->dJ:Ljava/util/Date;

    .line 29
    iput-object p5, p0, Lcom/appnext/base/a/b/b;->mDataType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ah()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/appnext/base/a/b/b;->dG:Ljava/lang/String;

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/appnext/base/a/b/b;->dI:Ljava/lang/String;

    return-object v0
.end method

.method public final aj()Ljava/util/Date;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/appnext/base/a/b/b;->dJ:Ljava/util/Date;

    return-object v0
.end method

.method public final getDataType()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/appnext/base/a/b/b;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/appnext/base/a/b/b;->dH:Ljava/lang/String;

    return-object v0
.end method
