.class public Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;
.super Ljava/lang/Exception;
.source "com.google.firebase:firebase-iid@@20.2.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/MessengerIpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestFailedException"
.end annotation


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;->errorCode:I

    return-void
.end method
