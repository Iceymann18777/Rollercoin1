.class public Lcom/yandex/metrica/impl/ob/cl$b;
.super Lcom/yandex/metrica/impl/ob/cl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/cm;
    .registers 4

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/cm;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cl$b;->c(Landroid/content/pm/FeatureInfo;)Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
