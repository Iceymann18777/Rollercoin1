.class final Landroidx/media2/session/SessionTokenImplBase;
.super Ljava/lang/Object;
.source "SessionTokenImplBase.java"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mExtras:Landroid/os/Bundle;

.field mISession:Landroid/os/IBinder;

.field mPackageName:Ljava/lang/String;

.field mServiceName:Ljava/lang/String;

.field mType:I

.field mUid:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 102
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 105
    :cond_6
    check-cast p1, Landroidx/media2/session/SessionTokenImplBase;

    .line 106
    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->mUid:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplBase;->mUid:I

    if-ne v0, v2, :cond_33

    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/session/SessionTokenImplBase;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->mServiceName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/session/SessionTokenImplBase;->mServiceName:Ljava/lang/String;

    .line 108
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->mType:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplBase;->mType:I

    if-ne v0, v2, :cond_33

    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->mISession:Landroid/os/IBinder;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplBase;->mISession:Landroid/os/IBinder;

    .line 110
    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    iget v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IMediaSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mISession:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
