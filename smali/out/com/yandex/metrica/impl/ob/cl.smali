.class public abstract Lcom/yandex/metrica/impl/ob/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/cl$b;,
        Lcom/yandex/metrica/impl/ob/cl$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;
.end method

.method public b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;
    .registers 5

    .line 26
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 27
    iget v0, p1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-nez v0, :cond_d

    .line 28
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cl;->a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    return-object p1

    .line 30
    :cond_d
    new-instance v0, Lcom/yandex/metrica/impl/ob/cm;

    iget v1, p1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cl;->c(Landroid/content/pm/FeatureInfo;)Z

    move-result p1

    const-string v2, "openGlFeature"

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Ljava/lang/String;IZ)V

    return-object v0

    .line 37
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cl;->a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/content/pm/FeatureInfo;)Z
    .registers 3

    .line 42
    iget p1, p1, Landroid/content/pm/FeatureInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
