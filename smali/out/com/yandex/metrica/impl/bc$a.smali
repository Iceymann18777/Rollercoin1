.class Lcom/yandex/metrica/impl/bc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Lcom/yandex/metrica/impl/bc$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bc$a;-><init>()V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bc$a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/bc$a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 127
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "unity"

    goto :goto_2e

    :cond_b
    const-string v0, "mono.MonoPackageManager"

    .line 129
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "xamarin"

    goto :goto_2e

    :cond_16
    const-string v0, "org.apache.cordova.CordovaPlugin"

    .line 131
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "cordova"

    goto :goto_2e

    :cond_21
    const-string v0, "com.facebook.react.ReactRootView"

    .line 133
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "react"

    goto :goto_2e

    :cond_2c
    const-string v0, "native"

    :goto_2e
    return-object v0
.end method

.method a(Ljava/lang/String;)Z
    .registers 2

    .line 141
    invoke-static {p1}, Lcom/yandex/metrica/impl/bc;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
