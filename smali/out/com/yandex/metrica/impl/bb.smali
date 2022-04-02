.class public final Lcom/yandex/metrica/impl/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bb$a;
    }
.end annotation


# static fields
.field static final a:Lcom/yandex/metrica/impl/bb$a;

.field static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/bb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/bb$a;

    .line 35
    invoke-static {}, Lcom/yandex/metrica/impl/bc;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "273"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/bb;->a:Lcom/yandex/metrica/impl/bb$a;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    sput-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "100"

    const-string v4, "1.00"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "110"

    const-string v4, "1.10"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "111"

    const-string v4, "1.11"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "120"

    const-string v4, "1.20"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "121"

    const-string v4, "1.21"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "122"

    const-string v4, "1.22"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "123"

    const-string v4, "1.23"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "124"

    const-string v4, "1.24"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "126"

    const-string v4, "1.26"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "127"

    const-string v4, "1.27"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "140"

    const-string v4, "1.40"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "141"

    const-string v4, "1.41"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "142"

    const-string v4, "1.42"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "150"

    const-string v4, "1.50"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "151"

    const-string v4, "1.51"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "160"

    const-string v4, "1.60"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "161"

    const-string v4, "1.61"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "162"

    const-string v4, "1.62"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "163"

    const-string v4, "1.63"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "164"

    const-string v4, "1.64"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "165"

    const-string v4, "1.65"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "166"

    const-string v4, "1.66"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x16

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "167"

    const-string v4, "1.67"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x17

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "168"

    const-string v4, "1.68"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "169"

    const-string v4, "1.69"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "170"

    const-string v4, "1.70"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "171"

    const-string v4, "1.71"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "172"

    const-string v4, "1.72"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "180"

    const-string v4, "1.80"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "181"

    const-string v4, "1.81"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "182"

    const-string v4, "1.82"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "200"

    const-string v4, "2.00"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "210"

    const-string v4, "2.10"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x21

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "211"

    const-string v4, "2.11"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x22

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "220"

    const-string v4, "2.20"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x23

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "221"

    const-string v4, "2.21"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x24

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "222"

    const-string v4, "2.22"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x25

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "223"

    const-string v4, "2.23"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x26

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "230"

    const-string v4, "2.30"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x27

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "231"

    const-string v4, "2.31"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x28

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "232"

    const-string v4, "2.32"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x29

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "233"

    const-string v4, "2.33"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "240"

    const-string v4, "2.40"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "241"

    const-string v4, "2.41"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "242"

    const-string v4, "2.42"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "243"

    const-string v4, "2.43"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "250"

    const-string v4, "2.50"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "251"

    const-string v4, "2.51"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "252"

    const-string v4, "2.52"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "260"

    const-string v4, "2.60"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x32

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "261"

    const-string v4, "2.61"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x33

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "262"

    const-string v4, "2.62"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x34

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "263"

    const-string v4, "2.63"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x35

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "264"

    const-string v4, "2.64"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "270"

    const-string v4, "2.70"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x37

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "271"

    const-string v4, "2.71"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x38

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "272"

    const-string v4, "2.72"

    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x39

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/bb$a;

    const-string v3, "2.73"

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/bb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static a(I)Lcom/yandex/metrica/impl/bb$a;
    .registers 2

    .line 104
    sget-object v0, Lcom/yandex/metrica/impl/bb;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/bb$a;

    return-object p0
.end method
