.class public Lcom/yandex/metrica/impl/ob/cl$a;
.super Lcom/yandex/metrica/impl/ob/cl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;
    .registers 5

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/ob/cm;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cl$a;->c(Landroid/content/pm/FeatureInfo;)Z

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
