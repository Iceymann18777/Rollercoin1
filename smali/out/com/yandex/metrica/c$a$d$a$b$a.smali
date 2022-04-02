.class public final Lcom/yandex/metrica/c$a$d$a$b$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile k:[Lcom/yandex/metrica/c$a$d$a$b$a;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 888
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 889
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$a$b$a;->e()Lcom/yandex/metrica/c$a$d$a$b$a;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$d$a$b$a;
    .registers 2

    .line 850
    sget-object v0, Lcom/yandex/metrica/c$a$d$a$b$a;->k:[Lcom/yandex/metrica/c$a$d$a$b$a;

    if-nez v0, :cond_15

    .line 851
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/c$a$d$a$b$a;->k:[Lcom/yandex/metrica/c$a$d$a$b$a;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/c$a$d$a$b$a;

    .line 854
    sput-object v1, Lcom/yandex/metrica/c$a$d$a$b$a;->k:[Lcom/yandex/metrica/c$a$d$a$b$a;

    .line 856
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 858
    :cond_15
    :goto_15
    sget-object v0, Lcom/yandex/metrica/c$a$d$a$b$a;->k:[Lcom/yandex/metrica/c$a$d$a$b$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x1

    .line 910
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 912
    :cond_9
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->c:I

    if-eqz v0, :cond_11

    const/4 v2, 0x2

    .line 913
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 915
    :cond_11
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->d:I

    if-eq v0, v1, :cond_19

    const/4 v2, 0x3

    .line 916
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 918
    :cond_19
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->e:I

    if-eq v0, v1, :cond_21

    const/4 v2, 0x4

    .line 919
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 921
    :cond_21
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->f:I

    if-eq v0, v1, :cond_29

    const/4 v2, 0x5

    .line 922
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 924
    :cond_29
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x6

    .line 925
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 927
    :cond_39
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->h:Z

    if-eqz v0, :cond_41

    const/4 v2, 0x7

    .line 928
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 930
    :cond_41
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->i:I

    if-eqz v0, :cond_4a

    const/16 v2, 0x8

    .line 931
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 933
    :cond_4a
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->j:I

    if-eq v0, v1, :cond_53

    const/16 v1, 0x9

    .line 934
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 936
    :cond_53
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 5

    .line 941
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 942
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const/4 v3, 0x1

    .line 944
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 946
    :cond_f
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->c:I

    if-eqz v1, :cond_19

    const/4 v3, 0x2

    .line 948
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 950
    :cond_19
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->d:I

    if-eq v1, v2, :cond_23

    const/4 v3, 0x3

    .line 952
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    :cond_23
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->e:I

    if-eq v1, v2, :cond_2d

    const/4 v3, 0x4

    .line 956
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 958
    :cond_2d
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->f:I

    if-eq v1, v2, :cond_37

    const/4 v3, 0x5

    .line 960
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 962
    :cond_37
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x6

    .line 963
    iget-object v3, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->g:Ljava/lang/String;

    .line 964
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 966
    :cond_49
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->h:Z

    if-eqz v1, :cond_53

    const/4 v1, 0x7

    .line 968
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_53
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->i:I

    if-eqz v1, :cond_5e

    const/16 v3, 0x8

    .line 972
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 974
    :cond_5e
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->j:I

    if-eq v1, v2, :cond_69

    const/16 v2, 0x9

    .line 976
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_69
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$d$a$b$a;
    .registers 4

    const/4 v0, -0x1

    .line 893
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->b:I

    const/4 v1, 0x0

    .line 894
    iput v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->c:I

    .line 895
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->d:I

    .line 896
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->e:I

    .line 897
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->f:I

    const-string v2, ""

    .line 898
    iput-object v2, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->g:Ljava/lang/String;

    .line 899
    iput-boolean v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->h:Z

    .line 900
    iput v1, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->i:I

    .line 901
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->j:I

    .line 902
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$a;->a:I

    return-object p0
.end method
