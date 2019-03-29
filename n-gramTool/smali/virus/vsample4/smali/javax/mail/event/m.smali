.class public Ljavax/mail/event/m;
.super Ljavax/mail/event/MailEvent;
.source "ILII"


# static fields
.field public static final ALERT:I = 0x1

.field public static final NOTICE:I = 0x2

.field private static final serialVersionUID:J = 0x1ae7a9da6074bb02L


# instance fields
.field protected message:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Store;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/StoreEvent;->type:I

    iput-object p3, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
