.class final Lcom/yandex/metrica/impl/at$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/yandex/metrica/c$a$d;

.field final b:Lcom/yandex/metrica/impl/a$a;

.field final c:Z


# direct methods
.method constructor <init>(Lcom/yandex/metrica/c$a$d;Lcom/yandex/metrica/impl/a$a;Z)V
    .registers 4

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p1, p0, Lcom/yandex/metrica/impl/at$b;->a:Lcom/yandex/metrica/c$a$d;

    .line 613
    iput-object p2, p0, Lcom/yandex/metrica/impl/at$b;->b:Lcom/yandex/metrica/impl/a$a;

    .line 614
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/at$b;->c:Z

    return-void
.end method
