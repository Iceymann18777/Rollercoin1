.class public Lcom/yandex/metrica/PreloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getAdditionalParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/PreloadInfo;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/PreloadInfo;->a:Ljava/lang/String;

    return-object v0
.end method
