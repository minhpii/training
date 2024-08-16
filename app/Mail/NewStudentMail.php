<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class NewStudentMail extends Mailable
{
    use Queueable, SerializesModels;

    protected $email;
    protected $name;
    protected $password;
    /**
     * Create a new message instance.
     */
    public function __construct($details)
    {
        $this->email = $details['email'];
        $this->name = $details['name'];
        $this->password = $details['password'];
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'New Student Mail',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'emails.new-student',
            with: ["email" => $this->email, "name" => $this->name, "password" => $this->password],
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
