.class public Ljavax/mail/event/h;
.super Ljavax/mail/event/MailEvent;
.source "IDLE not supported"


# static fields
.field public static final ENVELOPE_CHANGED:I = 0x2

.field public static final FLAGS_CHANGED:I = 0x1

.field private static final serialVersionUID:J = -0x450aa78f41850e84L


# instance fields
.field protected transient msg:Ljavax/mail/Message;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjavax/mail/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;

    iput p2, p0, Ljavax/mail/event/MessageChangedEvent;->type:I

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 0

    move/from16 p46, p31482

    #unknown opcode: 0xb700
    nop

    #Method index out of bounds: 16619
    #invoke-direct/range {p12756 .. p12775}, method@16619
    nop
.end method

