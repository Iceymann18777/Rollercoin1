.class public Lcom/yandex/metrica/impl/ob/z;
.super Lcom/yandex/metrica/impl/ob/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/aa<",
        "Lcom/yandex/metrica/impl/ob/af;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bb;

.field private final b:Lcom/yandex/metrica/impl/ob/ba;

.field private final c:Lcom/yandex/metrica/impl/ob/az;

.field private final d:Lcom/yandex/metrica/impl/ob/ap;

.field private final e:Lcom/yandex/metrica/impl/ob/ax;

.field private final f:Lcom/yandex/metrica/impl/ob/ak;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/aa;-><init>()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/bb;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->a:Lcom/yandex/metrica/impl/ob/bb;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/ba;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ba;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->b:Lcom/yandex/metrica/impl/ob/ba;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/az;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/az;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->c:Lcom/yandex/metrica/impl/ob/az;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/ap;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ap;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->d:Lcom/yandex/metrica/impl/ob/ap;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/ax;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ax;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->e:Lcom/yandex/metrica/impl/ob/ax;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/ak;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ak;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->f:Lcom/yandex/metrica/impl/ob/ak;

    return-void
.end method


# virtual methods
.method a(I)Lcom/yandex/metrica/impl/ob/x;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/x<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/yandex/metrica/impl/p$a;->a(I)Lcom/yandex/metrica/impl/p$a;

    move-result-object p1

    .line 49
    sget-object v1, Lcom/yandex/metrica/impl/ob/z$1;->a:[I

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_48

    goto :goto_41

    .line 67
    :pswitch_15
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->f:Lcom/yandex/metrica/impl/ob/ak;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 64
    :pswitch_1b
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->d:Lcom/yandex/metrica/impl/ob/ap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 58
    :pswitch_21
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->a:Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->b:Lcom/yandex/metrica/impl/ob/ba;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->c:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 54
    :pswitch_31
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->e:Lcom/yandex/metrica/impl/ob/ax;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->d:Lcom/yandex/metrica/impl/ob/ap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 51
    :pswitch_3c
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->e:Lcom/yandex/metrica/impl/ob/ax;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_41
    new-instance p1, Lcom/yandex/metrica/impl/ob/w;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/w;-><init>(Ljava/util/List;)V

    return-object p1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_31
        :pswitch_21
        :pswitch_1b
        :pswitch_1b
        :pswitch_15
    .end packed-switch
.end method
