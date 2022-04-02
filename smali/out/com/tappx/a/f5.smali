.class public Lcom/tappx/a/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tappx/a/f5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/tappx/a/k3;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/tappx/a/j3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tappx/a/f5$a;

    invoke-direct {v0}, Lcom/tappx/a/f5$a;-><init>()V

    sput-object v0, Lcom/tappx/a/f5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/tappx/a/k3;->a:Lcom/tappx/a/k3;

    iput-object v0, p0, Lcom/tappx/a/f5;->c:Lcom/tappx/a/k3;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/tappx/a/k3;->a:Lcom/tappx/a/k3;

    iput-object v0, p0, Lcom/tappx/a/f5;->c:Lcom/tappx/a/k3;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tappx/a/f5;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/tappx/a/f5;->b:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/k3;->a(Ljava/lang/String;)Lcom/tappx/a/k3;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/f5;->c:Lcom/tappx/a/k3;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tappx/a/f5;->d:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tappx/a/f5;->e:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    iput-boolean v0, p0, Lcom/tappx/a/f5;->f:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-boolean v1, p0, Lcom/tappx/a/f5;->g:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/j3;->a(Ljava/lang/String;)Lcom/tappx/a/j3;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/f5;->h:Lcom/tappx/a/j3;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tappx/a/f5$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/f5;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/tappx/a/f5;
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/a/f5;->a:I

    return-object p0
.end method

.method public a(Lcom/tappx/a/j3;)Lcom/tappx/a/f5;
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/tappx/a/f5;->h:Lcom/tappx/a/j3;

    return-object p0
.end method

.method public a(Lcom/tappx/a/k3;)Lcom/tappx/a/f5;
    .registers 2

    if-nez p1, :cond_4

    .line 2
    sget-object p1, Lcom/tappx/a/k3;->a:Lcom/tappx/a/k3;

    .line 3
    :cond_4
    iput-object p1, p0, Lcom/tappx/a/f5;->c:Lcom/tappx/a/k3;

    return-object p0
.end method

.method public a(Z)Lcom/tappx/a/f5;
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/tappx/a/f5;->f:Z

    return-object p0
.end method

.method public a()Lcom/tappx/a/j3;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/tappx/a/f5;->h:Lcom/tappx/a/j3;

    return-object v0
.end method

.method public b(I)Lcom/tappx/a/f5;
    .registers 2

    .line 2
    iput p1, p0, Lcom/tappx/a/f5;->e:I

    return-object p0
.end method

.method public b(Z)Lcom/tappx/a/f5;
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/tappx/a/f5;->g:Z

    return-object p0
.end method

.method public b()Lcom/tappx/a/k3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f5;->c:Lcom/tappx/a/k3;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/f5;->a:I

    return v0
.end method

.method public c(I)Lcom/tappx/a/f5;
    .registers 2

    .line 3
    iput p1, p0, Lcom/tappx/a/f5;->d:I

    return-object p0
.end method

.method public c(Z)Lcom/tappx/a/f5;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/f5;->b:Z

    return-object p0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/f5;->e:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/f5;->d:I

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/f5;->f:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/f5;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/f5;->b:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/tappx/a/f5;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Lcom/tappx/a/f5;->b:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Lcom/tappx/a/f5;->c:Lcom/tappx/a/k3;

    invoke-static {p2}, Lcom/tappx/a/k3;->a(Lcom/tappx/a/k3;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/tappx/a/f5;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/tappx/a/f5;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcom/tappx/a/f5;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/tappx/a/f5;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-object p2, p0, Lcom/tappx/a/f5;->h:Lcom/tappx/a/j3;

    invoke-static {p2}, Lcom/tappx/a/j3;->a(Lcom/tappx/a/j3;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
