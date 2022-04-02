.class Lcom/yandex/metrica/impl/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/y;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/y;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/yandex/metrica/impl/y$1;->a:Lcom/yandex/metrica/impl/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/yandex/metrica/impl/y$1;->a:Lcom/yandex/metrica/impl/y;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
