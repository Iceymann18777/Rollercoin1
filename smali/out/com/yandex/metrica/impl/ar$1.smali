.class Lcom/yandex/metrica/impl/ar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ar;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ar;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ar;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ar$1;->a:Lcom/yandex/metrica/impl/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar$1;->a:Lcom/yandex/metrica/impl/ar;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ar;->a(Lcom/yandex/metrica/impl/ar;)V

    return-void
.end method
